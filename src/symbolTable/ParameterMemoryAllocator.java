package symbolTable;

import java.util.ArrayList;
import java.util.List;

public class ParameterMemoryAllocator implements MemoryAllocator {
	MemoryAccessMethod accessor;
	final int startingOffset;
	int currentOffset;
	int minOffset;
	String baseAddress;
	List<Integer> bookmarks;
	List<MemoryLocation> params;

	public ParameterMemoryAllocator(MemoryAccessMethod accessor, String baseAddress, int startingOffset) {
		this.accessor = accessor;
		this.baseAddress = baseAddress;
		this.startingOffset = startingOffset;
		this.currentOffset = startingOffset;
		this.minOffset = startingOffset;
		this.bookmarks = new ArrayList<Integer>();
		this.params = new ArrayList<MemoryLocation>();
	}
	public ParameterMemoryAllocator(MemoryAccessMethod accessor, String baseAddress) {
		this(accessor, baseAddress, 0);
	}

	@Override
	public MemoryLocation allocate(int sizeInBytes) {
		currentOffset -= sizeInBytes;
		updateMin();
		MemoryLocation paramLocation = new MemoryLocation(accessor, baseAddress, currentOffset);
		this.params.add(paramLocation);
		return paramLocation;
	}
	private void updateMin() {
		if(minOffset > currentOffset) {
			minOffset = currentOffset;
		}
	}

	public MemoryLocation getParam(int index) {
		return this.params.get(index);
	}

	@Override
	public String getBaseAddress() {
		return baseAddress;
	}

	@Override
	public int getMaxAllocatedSize() {
		return startingOffset - minOffset;
	}
	
	@Override
	public void saveState() {
		bookmarks.add(currentOffset);
	}
	@Override
	public void restoreState() {
		assert bookmarks.size() > 0;
		int bookmarkIndex = bookmarks.size()-1;
		currentOffset = (int) bookmarks.remove(bookmarkIndex);

		if(bookmarks.size() == 0) {
			for(MemoryLocation param : params) {
				int maxAllocatedSize = getMaxAllocatedSize();
				param.incrementBaseAddress(maxAllocatedSize);
			}
		}
	}
}

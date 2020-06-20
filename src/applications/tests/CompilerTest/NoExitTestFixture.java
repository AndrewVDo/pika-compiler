package applications.tests.CompilerTest;

import tests.FileFixturesTestCase;

import java.security.Permission;

public class NoExitTestFixture extends CompilerTestFixture {

    protected static class ExitException extends SecurityException {
        public final int status;
        public ExitException(int status) {
            super("There is no escape!");
            this.status = status;
        }
    }

    private static class NoExitSecurityManager extends SecurityManager {
        @Override
        public void checkPermission(Permission perm) {
            //allow anything
        }
        @Override
        public void checkPermission(Permission perm, Object context) {
            //allow anything
        }
        @Override
        public void checkExit(int status) {
            super.checkExit(status);
            throw new ExitException(status);
        }
    }

    @Override
    protected void setUp() throws Exception {
        super.setUp();
        System.setSecurityManager(new NoExitSecurityManager());
    }
    @Override
    protected void tearDown() throws Exception {
        System.setSecurityManager(null);
        super.tearDown();
    }
}

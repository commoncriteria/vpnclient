TRANS?=transforms
# Optionally include some User preferences.
-include User.make
-include ~/commoncriteria/User.make

# Include the bulk
include $(TRANS)/module/Module.make

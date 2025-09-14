# Append R0 to R255
SM_75_Reg_Set =  [f"R{i}" for i in range(256)]
SM_75_Reg_Set.append(f"RZ")

# Append UR0 to U127
SM_75_UReg_Set = [f"UR{i}" for i in range(128)]
SM_75_UReg_Set.append(f"URZ")

# Note: RZ and URZ will be replaced to 0

# P0-P7, UP0-UP7, PT, UPT
SM_75_Predicate_Reg_Set = [f"P{i}" for i in range(8)]
SM_75_Predicate_Reg_Set.append(f"PT")
SM_75_Predicate_Reg_Set.extend([f"UP{i}" for i in range(8)])
SM_75_Predicate_Reg_Set.append(f"UPT")
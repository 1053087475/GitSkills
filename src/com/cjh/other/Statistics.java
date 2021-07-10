package com.cjh.other;

public class Statistics {
	int male,female,single;

	public int getMale() {
		return male;
	}

	public void setMale(int male) {
		this.male = male;
	}

	public int getFemale() {
		return female;
	}

	public void setFemale(int female) {
		this.female = female;
	}

	public int getSingle() {
		return single;
	}

	public void setSingle(int single) {
		this.single = single;
	}

	@Override
	public String toString() {
		return "Statistics [male=" + male + ", female=" + female + ", single=" + single + "]";
	}
	
}

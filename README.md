# Call-Detail-Record-analysis
This is Python code, executed in Jupyter(in cells) for finding suspected numbers involved in illegal telecom activities.
The column names of a sample Call Detail record file is shown below
CALLING_NO	CALLED_NO	CALL_DATE	CALL_TIME	DURATION	FIRST_CELL	LAST_CELL	CALL_TYPE	ESN/IMEI	IMSI	TYPE_OF_CONN	SMSC_CENTER	ROAM_CIRCLE	SWITCH	LRN
9042127775	7205851401	31-08-19	0:00:00	1	252698	0	SMT	3.56E+14	1.05E+14	PREPAID	3.20007E+11	AB	BIR_TAP_US_NY	6821

Based upon call duration, call count and how many IMEIs for a number, we can find suspected numbers who may be involved in illegal activites.

Disclaimer:- All numbers appearing in this code are randomly generated and any resemblance is only accidental.

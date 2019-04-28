package com.isacc.datax.api.dto.hdfsreader;


/**
 * <p>
 * hdfs file type
 * </p>
 *
 * @author lei.xie03@hand-china.com 2019/04/28 14:59
 */
public enum HdfsFileTypeEnum {
	/**
	 * textfile文件格式
	 */
	TEXT("text"),
	/**
	 * orcfile文件格式
	 */
	ORC("orc"),
	/**
	 * rcfile文件格式
	 */
	RC("rc"),
	/**
	 * sequence file文件格式
	 */
	SEQ("seq"),
	/**
	 * 普通hdfs文件格式（逻辑二维表）
	 */
	CSV("csv");

	/**
	 * hdfs file type
	 */
	private String fileType;

	HdfsFileTypeEnum(String fileType) {
		this.fileType = fileType;
	}
}

package oneEntity;
/**
 * ���� ģ���ʵ����
 * @author qyf
 *����11:34:18
 */
public class Authority {
	private int authorityId;//ģ������
	private String authorityName;//ģ������
	private int parentAuthority;//��ģ���� ��ģ��
	private String authorityState;//ģ��״̬ δɾ��
	private String authoritySonUrl;//��ģ��·��
	private String p1;//ģ��logo·��
	private String p2;//Ԥ���ֶ�
	
	public Authority(int authorityId, String authorityName, int parentAuthority, String authorityState,
			String authoritySonUrl, String p1, String p2) {
		super();
		this.authorityId = authorityId;
		this.authorityName = authorityName;
		this.parentAuthority = parentAuthority;
		this.authorityState = authorityState;
		this.authoritySonUrl = authoritySonUrl;
		this.p1 = p1;
		this.p2 = p2;
	}
	public Authority() {
		super();
	}
	public int getAuthorityId() {
		return authorityId;
	}
	public void setAuthorityId(int authorityId) {
		this.authorityId = authorityId;
	}
	public String getAuthorityName() {
		return authorityName;
	}
	public void setAuthorityName(String authorityName) {
		this.authorityName = authorityName;
	}
	public int getParentAuthority() {
		return parentAuthority;
	}
	public void setParentAuthority(int parentAuthority) {
		this.parentAuthority = parentAuthority;
	}
	public String getAuthorityState() {
		return authorityState;
	}
	public void setAuthorityState(String authorityState) {
		this.authorityState = authorityState;
	}
	public String getAuthoritySonUrl() {
		return authoritySonUrl;
	}
	public void setAuthoritySonUrl(String authoritySonUrl) {
		this.authoritySonUrl = authoritySonUrl;
	}
	public String getP1() {
		return p1;
	}
	public void setP1(String p1) {
		this.p1 = p1;
	}
	public String getP2() {
		return p2;
	}
	public void setP2(String p2) {
		this.p2 = p2;
	}
	
}

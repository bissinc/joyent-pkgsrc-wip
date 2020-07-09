# $NetBSD$

BUILDLINK_TREE+=	modsecurity

.if !defined(MODSECURITY_BUILDLINK3_MK)
MODSECURITY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.modsecurity+=	modsecurity>=3
BUILDLINK_PKGSRCDIR.modsecurity?=	../../wip/modsecurity

.include "../../databases/lmdb/buildlink3.mk"
.include "../../devel/libgetopt/buildlink3.mk"
.include "../../devel/yajl/buildlink3.mk"
.include "../../devel/pcre/buildlink3.mk"
.include "../../geography/libmaxminddb/buildlink3.mk"
.include "../../lang/lua53/buildlink3.mk"
.include "../../security/ssdeep/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../www/curl/buildlink3.mk"
.endif  # MODSECURITY_BUILDLINK3_MK

BUILDLINK_TREE+=	-modsecurity

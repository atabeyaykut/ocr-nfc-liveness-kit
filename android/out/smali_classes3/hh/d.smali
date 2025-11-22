.class public final synthetic Lhh/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/g0$a;


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;


# direct methods
.method public synthetic constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhh/d;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;

    iput-object p2, p0, Lhh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    return-void
.end method


# virtual methods
.method public final d(Lio/realm/g0;)V
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 17
    .line 18
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;

    .line 19
    .line 20
    invoke-direct {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lhh/d;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;

    .line 24
    .line 25
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;->setId(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;->setName(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;->getMediaType()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;->setMediaType(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;->getContentType()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;->setContentType(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;->getUpdateDate()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;->setUpdatedDate(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveInfo;->getCreateDate()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportMedia;->setCreateDate(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_0

    .line 68
    .line 69
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getMedia()Lio/realm/q0;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lio/realm/q0;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    :cond_0
    iget-object v0, p0, Lhh/d;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lio/realm/g0;->B(Lio/realm/s0;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.class public final Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\t\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003J\u0013\u0010\u0005\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002H\u00c6\u0001J\t\u0010\u0007\u001a\u00020\u0006H\u00d6\u0001J\t\u0010\t\u001a\u00020\u0008H\u00d6\u0001J\u0013\u0010\u000c\u001a\u00020\u000b2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\r\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;",
        "",
        "Leg/i;",
        "component1",
        "reportDetailMainInfo",
        "copy",
        "",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Leg/i;",
        "getReportDetailMainInfo",
        "()Leg/i;",
        "<init>",
        "(Leg/i;)V",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final reportDetailMainInfo:Leg/i;
    .annotation runtime Ll8/k;
        name = "map"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Leg/i;)V
    .locals 1

    const-string v0, "reportDetailMainInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    return-void
.end method

.method public static synthetic copy$default(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;Leg/i;ILjava/lang/Object;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    :cond_0
    invoke-virtual {p0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->copy(Leg/i;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Leg/i;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    return-object v0
.end method

.method public final copy(Leg/i;)Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;
    .locals 1

    const-string v0, "reportDetailMainInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    invoke-direct {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;-><init>(Leg/i;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getReportDetailMainInfo()Leg/i;
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    invoke-virtual {v0}, Leg/i;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReportDetailSubData(reportDetailMainInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->reportDetailMainInfo:Leg/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

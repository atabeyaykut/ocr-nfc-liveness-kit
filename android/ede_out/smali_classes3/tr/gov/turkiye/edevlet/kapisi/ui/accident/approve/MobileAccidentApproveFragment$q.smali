.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/q<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;",
        ">;>;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$6"
    f = "MobileAccidentApproveFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Lr0/b;

.field public synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lr0/b;

    .line 2
    .line 3
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;

    .line 4
    .line 5
    check-cast p3, Lp9/d;

    .line 6
    .line 7
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;

    .line 8
    .line 9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 10
    .line 11
    invoke-direct {v0, v1, p3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->a:Lr0/b;

    .line 15
    .line 16
    iput-object p2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;

    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->a:Lr0/b;

    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;

    .line 7
    .line 8
    instance-of v1, p1, Lr0/d1;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v1, p1, Lr0/k;

    .line 16
    .line 17
    :goto_0
    const/4 v3, 0x0

    .line 18
    iget-object v4, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$q;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-static {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->G(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 26
    .line 27
    const-string v0, "Loading host location"

    .line 28
    .line 29
    new-array v1, v3, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_1
    instance-of v1, p1, Lr0/c1;

    .line 36
    .line 37
    if-eqz v1, :cond_6

    .line 38
    .line 39
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 40
    .line 41
    const-string v1, "Success host location"

    .line 42
    .line 43
    new-array v5, v3, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p1, v1, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationModel;->getHostReportLocationData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationData;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationData;->getGetLocationObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationObject;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationObject;->getHostReportLocationMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationMap;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationMap;->getHostReportLocationSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationSubData;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationSubData;->getHostReportLocationList()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    const/4 p1, 0x0

    .line 78
    :goto_1
    move-object v0, p1

    .line 79
    check-cast v0, Ljava/util/Collection;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    const/4 v2, 0x0

    .line 91
    :cond_4
    :goto_2
    if-nez v2, :cond_5

    .line 92
    .line 93
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationList;->getHostReportLocationListItem()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/HostReportLocationListItem;->getAccidentAddress()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    iput-object p1, v4, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->p:Ljava/lang/String;

    .line 108
    .line 109
    :cond_5
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 110
    .line 111
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lzg/l;->d()V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    instance-of v0, p1, Lr0/i;

    .line 120
    .line 121
    if-eqz v0, :cond_7

    .line 122
    .line 123
    check-cast p1, Lr0/i;

    .line 124
    .line 125
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 126
    .line 127
    invoke-static {v4, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Ljava/lang/Throwable;)V

    .line 128
    .line 129
    .line 130
    :cond_7
    :goto_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 131
    .line 132
    return-object p1
.end method

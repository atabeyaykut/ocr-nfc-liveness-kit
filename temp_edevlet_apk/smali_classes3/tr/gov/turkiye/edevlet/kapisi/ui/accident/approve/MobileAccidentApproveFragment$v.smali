.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$v;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lcom/airbnb/epoxy/p;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$v;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Lcom/airbnb/epoxy/p;

    .line 2
    .line 3
    const-string v0, "$this$withModels"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$v;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 9
    .line 10
    iget-object v1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPolicies()Lio/realm/q0;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lio/realm/q0;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object v1, v2

    .line 37
    :goto_0
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 38
    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPolicies()Lio/realm/q0;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    invoke-virtual {v0}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_3

    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    add-int/lit8 v5, v3, 0x1

    .line 69
    .line 70
    if-ltz v3, :cond_2

    .line 71
    .line 72
    check-cast v4, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    .line 73
    .line 74
    new-instance v6, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel_;

    .line 75
    .line 76
    invoke-direct {v6}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel_;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->getId()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-interface {v6, v7}, Lvh/a;->id(Ljava/lang/CharSequence;)Lvh/a;

    .line 84
    .line 85
    .line 86
    invoke-interface {v6, v4}, Lvh/a;->policyItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;)Lvh/a;

    .line 87
    .line 88
    .line 89
    if-eqz v1, :cond_1

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    add-int/lit8 v4, v4, -0x1

    .line 96
    .line 97
    if-ne v3, v4, :cond_1

    .line 98
    .line 99
    const-string v3, "HIDE"

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_1
    const-string v3, "SHOW"

    .line 103
    .line 104
    :goto_2
    invoke-interface {v6, v3}, Lvh/a;->isDivider(Ljava/lang/String;)Lvh/a;

    .line 105
    .line 106
    .line 107
    invoke-interface {p1, v6}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 108
    .line 109
    .line 110
    move v3, v5

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-static {}, Lb8/f;->k0()V

    .line 113
    .line 114
    .line 115
    throw v2

    .line 116
    :cond_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 117
    .line 118
    return-object p1
.end method

.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$c;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

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
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment$c;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 9
    .line 10
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPolicies()Lio/realm/q0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Lio/realm/q0;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v1, v2

    .line 33
    :goto_0
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getVehicle()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportVehicle;->getPolicies()Lio/realm/q0;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v3, 0x0

    .line 50
    const/4 v4, 0x0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    add-int/lit8 v6, v4, 0x1

    .line 62
    .line 63
    if-ltz v4, :cond_2

    .line 64
    .line 65
    check-cast v5, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;

    .line 66
    .line 67
    new-instance v7, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel_;

    .line 68
    .line 69
    invoke-direct {v7}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/ui/PolicyListModel_;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;->getId()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v8

    .line 76
    invoke-interface {v7, v8}, Lvh/a;->id(Ljava/lang/CharSequence;)Lvh/a;

    .line 77
    .line 78
    .line 79
    invoke-interface {v7, v5}, Lvh/a;->policyItem(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportPolicy;)Lvh/a;

    .line 80
    .line 81
    .line 82
    sget-object v5, Lyd/a;->a:Lyd/a$a;

    .line 83
    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const/16 v9, 0x20

    .line 93
    .line 94
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    new-array v9, v3, [Ljava/lang/Object;

    .line 105
    .line 106
    invoke-virtual {v5, v8, v9}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_1

    .line 110
    .line 111
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    add-int/lit8 v5, v5, -0x1

    .line 116
    .line 117
    if-ne v4, v5, :cond_1

    .line 118
    .line 119
    const-string v4, "HIDE"

    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_1
    const-string v4, "SHOW"

    .line 123
    .line 124
    :goto_2
    invoke-interface {v7, v4}, Lvh/a;->isDivider(Ljava/lang/String;)Lvh/a;

    .line 125
    .line 126
    .line 127
    invoke-interface {p1, v7}, Lcom/airbnb/epoxy/f0;->add(Lcom/airbnb/epoxy/u;)V

    .line 128
    .line 129
    .line 130
    move v4, v6

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    invoke-static {}, Lb8/f;->k0()V

    .line 133
    .line 134
    .line 135
    throw v2

    .line 136
    :cond_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 137
    .line 138
    return-object p1
.end method

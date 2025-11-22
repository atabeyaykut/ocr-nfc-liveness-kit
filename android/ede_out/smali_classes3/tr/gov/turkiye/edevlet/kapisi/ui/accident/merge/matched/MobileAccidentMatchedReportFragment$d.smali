.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr9/i;",
        "Lx9/p<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ScanQRDraftModel;",
        ">;>;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportFragment$onCreate$2"
    f = "MobileAccidentMatchedReportFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lr9/i;-><init>(ILp9/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lp9/d;)Lp9/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lp9/d<",
            "*>;)",
            "Lp9/d<",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lr0/b;

    .line 2
    .line 3
    check-cast p2, Lp9/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lr0/b;

    .line 7
    .line 8
    instance-of v0, p1, Lr0/d1;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 15
    .line 16
    :goto_0
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 22
    .line 23
    const-string v0, "Loading scanqrdraft  ***"

    .line 24
    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->k:Z

    .line 31
    .line 32
    if-eqz p1, :cond_5

    .line 33
    .line 34
    iput-boolean v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->k:Z

    .line 35
    .line 36
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->c:Lv/e;

    .line 37
    .line 38
    if-eqz p1, :cond_5

    .line 39
    .line 40
    invoke-virtual {p1}, Lv/e;->show()V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_2

    .line 44
    .line 45
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 46
    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 50
    .line 51
    const-string v0, "success scanqrdraft  ***"

    .line 52
    .line 53
    new-array v3, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1, v0, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->c:Lv/e;

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 63
    .line 64
    .line 65
    :cond_2
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->e:Ljava/lang/String;

    .line 66
    .line 67
    const-string v3, "HOST"

    .line 68
    .line 69
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_5

    .line 74
    .line 75
    iput-boolean v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->k:Z

    .line 76
    .line 77
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->d:Landroid/content/Context;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    new-instance v3, Lorg/json/JSONObject;

    .line 82
    .line 83
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 84
    .line 85
    .line 86
    iget-object v4, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->g:Ljava/lang/String;

    .line 87
    .line 88
    const-string v5, "scenarioId"

    .line 89
    .line 90
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    iget-object v4, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->f:Ljava/lang/String;

    .line 94
    .line 95
    const-string v5, "partyId"

    .line 96
    .line 97
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v5, "json "

    .line 103
    .line 104
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    new-array v2, v2, [Ljava/lang/Object;

    .line 115
    .line 116
    invoke-virtual {p1, v4, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string v2, "https://www.turkiye.gov.tr/sbm-mobil-kaza-tespit-tutanagi?kroki=duzenle&par="

    .line 122
    .line 123
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->f:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, "&sce="

    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->g:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const v2, 0x7f130192

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string v3, "toString()"

    .line 157
    .line 158
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v3, "getString(R.string.mkt_toolbar_title)"

    .line 162
    .line 163
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v2, v0}, Lze/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    goto :goto_1

    .line 171
    :cond_3
    const/4 p1, 0x0

    .line 172
    :goto_1
    iget-object v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->l:Landroidx/activity/result/ActivityResultLauncher;

    .line 173
    .line 174
    invoke-virtual {v0, p1}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_4
    instance-of p1, p1, Lr0/i;

    .line 179
    .line 180
    if-eqz p1, :cond_5

    .line 181
    .line 182
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 183
    .line 184
    const-string v0, "Error scanqrdraft ***"

    .line 185
    .line 186
    new-array v3, v2, [Ljava/lang/Object;

    .line 187
    .line 188
    invoke-virtual {p1, v0, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    iput-boolean v2, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/matched/MobileAccidentMatchedReportFragment;->k:Z

    .line 192
    .line 193
    :cond_5
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 194
    .line 195
    return-object p1
.end method

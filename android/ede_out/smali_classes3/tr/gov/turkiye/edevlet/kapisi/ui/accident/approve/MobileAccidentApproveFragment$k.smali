.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


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
        "Lx9/p<",
        "Lr0/b<",
        "+",
        "Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result<",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;",
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
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$18"
    f = "MobileAccidentApproveFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

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

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->a:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->a:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p1, Lr0/b;

    .line 7
    .line 8
    instance-of v0, p1, Lr0/d1;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 16
    .line 17
    :goto_0
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$k;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 23
    .line 24
    const-string v0, "Loading saveReport ***"

    .line 25
    .line 26
    new-array v4, v3, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v1, 0x0

    .line 43
    :goto_1
    if-eqz v1, :cond_8

    .line 44
    .line 45
    iget-object p1, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 46
    .line 47
    if-eqz p1, :cond_8

    .line 48
    .line 49
    invoke-virtual {p1}, Lv/e;->show()V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_4

    .line 53
    .line 54
    :cond_2
    instance-of v0, p1, Lr0/c1;

    .line 55
    .line 56
    if-eqz v0, :cond_7

    .line 57
    .line 58
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 59
    .line 60
    const-string v4, "success saveReport ***"

    .line 61
    .line 62
    new-array v5, v3, [Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {v0, v4, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v1, :cond_3

    .line 76
    .line 77
    const/4 v0, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    const/4 v0, 0x0

    .line 80
    :goto_2
    if-eqz v0, :cond_4

    .line 81
    .line 82
    iget-object v0, v2, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->e:Lv/e;

    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 87
    .line 88
    .line 89
    :cond_4
    :try_start_0
    check-cast p1, Lr0/c1;

    .line 90
    .line 91
    iget-object p1, p1, Lr0/c1;->b:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 94
    .line 95
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;

    .line 100
    .line 101
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportModel;->getSaveReportData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportData;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const/4 v0, 0x0

    .line 106
    if-eqz p1, :cond_5

    .line 107
    .line 108
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportData;->getSaveReportObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportObject;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    if-eqz p1, :cond_5

    .line 113
    .line 114
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportObject;->getSaveReportMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMap;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move-object p1, v0

    .line 120
    :goto_3
    if-eqz p1, :cond_6

    .line 121
    .line 122
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMap;->getSaveReportSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportSubData;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    if-eqz v4, :cond_6

    .line 127
    .line 128
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportSubData;->getSaveReportMainInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMainInfo;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-eqz v4, :cond_6

    .line 133
    .line 134
    invoke-virtual {v4}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMainInfo;->getReportNumber()J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    new-instance v0, Ljava/lang/Long;

    .line 139
    .line 140
    invoke-direct {v0, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 141
    .line 142
    .line 143
    :cond_6
    if-eqz v0, :cond_8

    .line 144
    .line 145
    new-array v0, v1, [Ll9/g;

    .line 146
    .line 147
    const-string v1, "reportNumber"

    .line 148
    .line 149
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMap;->getSaveReportSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportSubData;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportSubData;->getSaveReportMainInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMainInfo;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/SaveReportMainInfo;->getReportNumber()J

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    new-instance p1, Ljava/lang/Long;

    .line 162
    .line 163
    invoke-direct {p1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 164
    .line 165
    .line 166
    new-instance v4, Ll9/g;

    .line 167
    .line 168
    invoke-direct {v4, v1, p1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    aput-object v4, v0, v3

    .line 172
    .line 173
    invoke-static {v0}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    new-instance v1, Landroidx/navigation/NavOptions$Builder;

    .line 182
    .line 183
    invoke-direct {v1}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    .line 184
    .line 185
    .line 186
    const v2, 0x7f0a0271

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v2, v3}, Landroidx/navigation/NavOptions$Builder;->setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroidx/navigation/NavOptions$Builder;->build()Landroidx/navigation/NavOptions;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    const v2, 0x7f0a0277

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v2, p1, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_7
    instance-of v0, p1, Lr0/i;

    .line 205
    .line 206
    if-eqz v0, :cond_8

    .line 207
    .line 208
    check-cast p1, Lr0/i;

    .line 209
    .line 210
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 211
    .line 212
    invoke-static {v2, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Ljava/lang/Throwable;)V

    .line 213
    .line 214
    .line 215
    :catch_0
    :cond_8
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 216
    .line 217
    return-object p1
.end method

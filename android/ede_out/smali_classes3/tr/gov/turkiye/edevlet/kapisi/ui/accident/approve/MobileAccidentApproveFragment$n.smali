.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;",
        ">;>;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment$onCreate$3"
    f = "MobileAccidentApproveFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Lr0/b;

.field public synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

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
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

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
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    .line 4
    .line 5
    check-cast p3, Lp9/d;

    .line 6
    .line 7
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;

    .line 8
    .line 9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 10
    .line 11
    invoke-direct {v0, v1, p3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Lp9/d;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->a:Lr0/b;

    .line 15
    .line 16
    iput-object p2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->a:Lr0/b;

    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;

    .line 7
    .line 8
    instance-of v1, p1, Lr0/d1;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, p1, Lr0/k;

    .line 15
    .line 16
    :goto_0
    const/4 v2, 0x0

    .line 17
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment$n;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->G(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 25
    .line 26
    const-string v0, "Loading details"

    .line 27
    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_5

    .line 34
    .line 35
    :cond_1
    instance-of v1, p1, Lr0/c1;

    .line 36
    .line 37
    if-eqz v1, :cond_7

    .line 38
    .line 39
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 40
    .line 41
    const-string v1, "Success details"

    .line 42
    .line 43
    new-array v4, v2, [Ljava/lang/Object;

    .line 44
    .line 45
    invoke-virtual {p1, v1, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailModel;->getReportDetailData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailData;->getPartiesObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PartiesObject;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PartiesObject;->getReportDetailMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailMap;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailMap;->getReportDetailSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ReportDetailSubData;->getReportDetailMainInfo()Leg/i;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    move-object v0, v1

    .line 79
    :goto_1
    iput-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    .line 80
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v4, "Report Role "

    .line 84
    .line 85
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v4, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-virtual {v4}, Leg/i;->g()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move-object v4, v1

    .line 98
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    new-array v4, v2, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p1, v0, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->m:Leg/i;

    .line 111
    .line 112
    if-eqz p1, :cond_4

    .line 113
    .line 114
    invoke-virtual {p1}, Leg/i;->g()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_3

    .line 119
    :cond_4
    move-object p1, v1

    .line 120
    :goto_3
    const-string v0, "GUEST"

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-eqz p1, :cond_6

    .line 127
    .line 128
    invoke-static {}, Lio/realm/g0;->t()Lio/realm/g0;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lio/realm/a;->m()V

    .line 133
    .line 134
    .line 135
    const-class v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Lio/realm/g0;->J(Ljava/lang/Class;)Lio/realm/RealmQuery;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Lio/realm/RealmQuery;->e()Lio/realm/s0;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 146
    .line 147
    iput-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;

    .line 148
    .line 149
    if-eqz p1, :cond_8

    .line 150
    .line 151
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/MKTAccidentReport;->getReport()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iput-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 156
    .line 157
    if-eqz p1, :cond_8

    .line 158
    .line 159
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getParticipants()Lio/realm/q0;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    invoke-virtual {p1}, Lio/realm/q0;->iterator()Ljava/util/Iterator;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    :cond_5
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-eqz v0, :cond_8

    .line 174
    .line 175
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;

    .line 180
    .line 181
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getPartyRole()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    const-string v5, "HOST"

    .line 186
    .line 187
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_5

    .line 192
    .line 193
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentReportParticipant;->getReportPartyId()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 200
    .line 201
    .line 202
    move-result-object v4

    .line 203
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 204
    .line 205
    .line 206
    new-instance v5, Lzg/q;

    .line 207
    .line 208
    invoke-direct {v5, v4, v0, v1}, Lzg/q;-><init>(Lzg/l;Ljava/lang/String;Lp9/d;)V

    .line 209
    .line 210
    .line 211
    const/4 v0, 0x3

    .line 212
    iget-object v6, v4, Lr0/z;->c:Lnc/a0;

    .line 213
    .line 214
    invoke-static {v6, v1, v2, v5, v0}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 215
    .line 216
    .line 217
    new-instance v0, Lzg/r;

    .line 218
    .line 219
    invoke-direct {v0, v4, v1}, Lzg/r;-><init>(Lzg/l;Lp9/d;)V

    .line 220
    .line 221
    .line 222
    iget-object v4, v4, Lzg/l;->i:Lzg/f;

    .line 223
    .line 224
    invoke-static {v6, v4, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 225
    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_6
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lzg/l;->d()V

    .line 233
    .line 234
    .line 235
    goto :goto_5

    .line 236
    :cond_7
    instance-of v0, p1, Lr0/i;

    .line 237
    .line 238
    if-eqz v0, :cond_8

    .line 239
    .line 240
    check-cast p1, Lr0/i;

    .line 241
    .line 242
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 243
    .line 244
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;Ljava/lang/Throwable;)V

    .line 245
    .line 246
    .line 247
    :cond_8
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 248
    .line 249
    return-object p1
.end method

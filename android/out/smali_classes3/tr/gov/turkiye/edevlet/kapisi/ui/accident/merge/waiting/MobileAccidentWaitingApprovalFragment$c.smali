.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;",
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
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalFragment$onCreate$2"
    f = "MobileAccidentWaitingApprovalFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

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

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->a:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->a:Ljava/lang/Object;

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
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment$c;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;

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
    const-string v0, "Loading checkQRState  ***"

    .line 24
    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->g:I

    .line 31
    .line 32
    iget v0, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->f:I

    .line 33
    .line 34
    if-lt p1, v0, :cond_7

    .line 35
    .line 36
    iget-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->c:Lv/e;

    .line 37
    .line 38
    if-eqz p1, :cond_7

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
    if-eqz v0, :cond_6

    .line 48
    .line 49
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 50
    .line 51
    const-string v3, "Success checkQRState  ***"

    .line 52
    .line 53
    new-array v4, v2, [Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {v0, v3, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->c:Lv/e;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3}, Lv/e;->dismiss()V

    .line 63
    .line 64
    .line 65
    :cond_2
    :try_start_0
    check-cast p1, Lr0/c1;

    .line 66
    .line 67
    iget-object p1, p1, Lr0/c1;->b:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;

    .line 70
    .line 71
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/Result;->getOrThrow()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;

    .line 76
    .line 77
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestModel;->getControlConfirmationRequestData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestData;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestData;->getControlConfirmationRequestObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestObject;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    if-eqz p1, :cond_3

    .line 88
    .line 89
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestObject;->getControlConfirmationRequestSubData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestSubData;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestSubData;->getControlConfirmationRequestMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestMap;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestMap;->getControlConfirmationRequestInfo()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestInfo;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_3

    .line 106
    .line 107
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/ControlConfirmationRequestInfo;->getResult()Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const/4 p1, 0x0

    .line 117
    :goto_1
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 118
    .line 119
    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    const-string p1, "result true"

    .line 126
    .line 127
    new-array v3, v2, [Ljava/lang/Object;

    .line 128
    .line 129
    invoke-virtual {v0, p1, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const v0, 0x7f0a026a

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroidx/navigation/NavController;->navigate(I)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    const-string p1, "Check Approve - 0"

    .line 144
    .line 145
    new-array v3, v2, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {v0, p1, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    iget p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->g:I

    .line 151
    .line 152
    iget v3, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->f:I

    .line 153
    .line 154
    if-ge p1, v3, :cond_5

    .line 155
    .line 156
    const-string p1, "Check Approve - 1"

    .line 157
    .line 158
    new-array v3, v2, [Ljava/lang/Object;

    .line 159
    .line 160
    invoke-virtual {v0, p1, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    new-instance p1, Lph/a;

    .line 164
    .line 165
    invoke-direct {p1, v1}, Lph/a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;)V

    .line 166
    .line 167
    .line 168
    iput-object p1, v1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->e:Lph/a;

    .line 169
    .line 170
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_5
    const-string p1, "Check Approve - 2"

    .line 175
    .line 176
    new-array v3, v2, [Ljava/lang/Object;

    .line 177
    .line 178
    invoke-virtual {v0, p1, v3}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;->c:Lcom/airbnb/lottie/LottieAnimationView;

    .line 186
    .line 187
    const/16 v0, 0x8

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/merge/waiting/MobileAccidentWaitingApprovalFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentWaitingApprovalBinding;->b:Lcom/google/android/material/button/MaterialButton;

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :catch_0
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 203
    .line 204
    const-string v0, "Check Approve - 3"

    .line 205
    .line 206
    new-array v1, v2, [Ljava/lang/Object;

    .line 207
    .line 208
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :cond_6
    instance-of p1, p1, Lr0/i;

    .line 213
    .line 214
    if-eqz p1, :cond_7

    .line 215
    .line 216
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 217
    .line 218
    const-string v0, "Error checkQRState ***"

    .line 219
    .line 220
    new-array v1, v2, [Ljava/lang/Object;

    .line 221
    .line 222
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    :cond_7
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 226
    .line 227
    return-object p1
.end method

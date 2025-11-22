.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;",
        ">;>;",
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;",
        "Lp9/d<",
        "-",
        "Ll9/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lr9/e;
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment$onCreate$6"
    f = "MobileAccidentAgreementFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Lr0/b;

.field public synthetic b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

.field public final synthetic c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

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
    check-cast p2, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    .line 4
    .line 5
    check-cast p3, Lp9/d;

    .line 6
    .line 7
    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;

    .line 8
    .line 9
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

    .line 10
    .line 11
    invoke-direct {v0, v1, p3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;Lp9/d;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->a:Lr0/b;

    .line 15
    .line 16
    iput-object p2, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

    .line 17
    .line 18
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->a:Lr0/b;

    .line 5
    .line 6
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->b:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;

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
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment$h;->c:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->d:Lv/e;

    .line 22
    .line 23
    if-eqz p1, :cond_f

    .line 24
    .line 25
    invoke-virtual {p1}, Lv/e;->show()V

    .line 26
    .line 27
    .line 28
    goto/16 :goto_5

    .line 29
    .line 30
    :cond_1
    instance-of v1, p1, Lr0/c1;

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    const/16 v5, 0x8

    .line 34
    .line 35
    if-eqz v1, :cond_7

    .line 36
    .line 37
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 38
    .line 39
    const-string v1, "Success agreement ***"

    .line 40
    .line 41
    new-array v6, v4, [Ljava/lang/Object;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->d:Lv/e;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 51
    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementModel;->getAgreementData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementData;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AgreementData;->getCheckConfirmationResponseObject()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckConfirmationResponseObject;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CheckConfirmationResponseObject;->getDocumentMap()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DocumentMap;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/DocumentMap;->getDocument()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    const/4 p1, 0x0

    .line 77
    :goto_1
    if-eqz p1, :cond_5

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_4

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_4
    const/4 v2, 0x0

    .line 87
    :cond_5
    :goto_2
    if-nez v2, :cond_f

    .line 88
    .line 89
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 94
    .line 95
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 96
    .line 97
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 105
    .line 106
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 107
    .line 108
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 116
    .line 117
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 121
    .line 122
    const/16 v1, 0x18

    .line 123
    .line 124
    if-lt v0, v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 131
    .line 132
    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    .line 133
    .line 134
    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 145
    .line 146
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 158
    .line 159
    invoke-static {p1}, Landroidx/core/app/e;->g(Ljava/lang/String;)Landroid/text/Spanned;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_3

    .line 164
    :cond_6
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->h:Landroidx/appcompat/widget/AppCompatTextView;

    .line 182
    .line 183
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    :goto_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .line 189
    .line 190
    goto/16 :goto_5

    .line 191
    .line 192
    :cond_7
    instance-of v0, p1, Lr0/i;

    .line 193
    .line 194
    if-eqz v0, :cond_f

    .line 195
    .line 196
    check-cast p1, Lr0/i;

    .line 197
    .line 198
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 199
    .line 200
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->d:Lv/e;

    .line 201
    .line 202
    if-eqz v0, :cond_8

    .line 203
    .line 204
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 205
    .line 206
    .line 207
    :cond_8
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 208
    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    const-string p1, "action.login.open"

    .line 212
    .line 213
    const v0, 0x8000

    .line 214
    .line 215
    .line 216
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 221
    .line 222
    const/16 v1, 0x22

    .line 223
    .line 224
    if-lt v0, v1, :cond_9

    .line 225
    .line 226
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 227
    .line 228
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    .line 230
    .line 231
    :cond_9
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    if-eqz p1, :cond_f

    .line 239
    .line 240
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_5

    .line 244
    .line 245
    :cond_a
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 246
    .line 247
    if-eqz v0, :cond_b

    .line 248
    .line 249
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 254
    .line 255
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 263
    .line 264
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 265
    .line 266
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 274
    .line 275
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 276
    .line 277
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 285
    .line 286
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 287
    .line 288
    new-instance v0, Lzd/d;

    .line 289
    .line 290
    const/16 v1, 0xf

    .line 291
    .line 292
    invoke-direct {v0, v1, v3}, Lzd/d;-><init>(ILjava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_b
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 300
    .line 301
    if-eqz v0, :cond_e

    .line 302
    .line 303
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 304
    .line 305
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 314
    .line 315
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 323
    .line 324
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 325
    .line 326
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 334
    .line 335
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 336
    .line 337
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 338
    .line 339
    .line 340
    if-eqz p1, :cond_d

    .line 341
    .line 342
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_c

    .line 347
    .line 348
    goto :goto_4

    .line 349
    :cond_c
    const/4 v2, 0x0

    .line 350
    :cond_d
    :goto_4
    if-nez v2, :cond_f

    .line 351
    .line 352
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 357
    .line 358
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 359
    .line 360
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    goto :goto_5

    .line 364
    :cond_e
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 369
    .line 370
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->f:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 378
    .line 379
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 380
    .line 381
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;->g:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 389
    .line 390
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 391
    .line 392
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 393
    .line 394
    .line 395
    :cond_f
    :goto_5
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 396
    .line 397
    return-object p1
.end method

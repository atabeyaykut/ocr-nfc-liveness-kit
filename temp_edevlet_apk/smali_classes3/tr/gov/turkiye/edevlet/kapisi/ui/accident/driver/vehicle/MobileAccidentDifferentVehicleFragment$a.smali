.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->invalidate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lfh/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;)V
    .locals 0

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    check-cast p1, Lfh/c;

    .line 2
    .line 3
    const-string v0, "state"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p1, Lfh/c;->a:Lr0/b;

    .line 9
    .line 10
    instance-of v0, p1, Lr0/d1;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    instance-of v0, p1, Lr0/k;

    .line 18
    .line 19
    :goto_0
    const/4 v2, 0x0

    .line 20
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment$a;->a:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 25
    .line 26
    const-string v0, "Loading different car"

    .line 27
    .line 28
    new-array v1, v2, [Ljava/lang/Object;

    .line 29
    .line 30
    invoke-virtual {p1, v0, v1}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-boolean p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->e:Z

    .line 34
    .line 35
    if-eqz p1, :cond_b

    .line 36
    .line 37
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->c:Lv/e;

    .line 38
    .line 39
    if-eqz p1, :cond_b

    .line 40
    .line 41
    invoke-virtual {p1}, Lv/e;->show()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_1
    instance-of v0, p1, Lr0/c1;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 51
    .line 52
    const-string v0, "Success different car"

    .line 53
    .line 54
    new-array v4, v2, [Ljava/lang/Object;

    .line 55
    .line 56
    invoke-virtual {p1, v0, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->c:Lv/e;

    .line 60
    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-boolean p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->e:Z

    .line 67
    .line 68
    if-eqz p1, :cond_b

    .line 69
    .line 70
    iput-boolean v2, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->e:Z

    .line 71
    .line 72
    new-array p1, v1, [Ll9/g;

    .line 73
    .line 74
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->f:Lcom/google/android/material/textfield/TextInputEditText;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    new-instance v1, Ll9/g;

    .line 89
    .line 90
    const-string v4, "companyBrand"

    .line 91
    .line 92
    invoke-direct {v1, v4, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    aput-object v1, p1, v2

    .line 96
    .line 97
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {v3}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const v1, 0x7f0a0276

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 109
    .line 110
    .line 111
    goto/16 :goto_2

    .line 112
    .line 113
    :cond_3
    instance-of v0, p1, Lr0/i;

    .line 114
    .line 115
    if-eqz v0, :cond_b

    .line 116
    .line 117
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 118
    .line 119
    const-string v4, "Fail different car"

    .line 120
    .line 121
    new-array v5, v2, [Ljava/lang/Object;

    .line 122
    .line 123
    invoke-virtual {v0, v4, v5}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    iput-boolean v2, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->e:Z

    .line 127
    .line 128
    check-cast p1, Lr0/i;

    .line 129
    .line 130
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 131
    .line 132
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->c:Lv/e;

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0}, Lv/e;->dismiss()V

    .line 137
    .line 138
    .line 139
    :cond_4
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 140
    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    const-string p1, "action.login.open"

    .line 144
    .line 145
    const v0, 0x8000

    .line 146
    .line 147
    .line 148
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 153
    .line 154
    const/16 v1, 0x22

    .line 155
    .line 156
    if-lt v0, v1, :cond_5

    .line 157
    .line 158
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 159
    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    .line 162
    .line 163
    :cond_5
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_b

    .line 171
    .line 172
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_2

    .line 176
    .line 177
    :cond_6
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/NetworkErrorException;

    .line 178
    .line 179
    const/16 v4, 0x8

    .line 180
    .line 181
    if-eqz v0, :cond_7

    .line 182
    .line 183
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 188
    .line 189
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 197
    .line 198
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 199
    .line 200
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 208
    .line 209
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 219
    .line 220
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->b:Landroid/widget/Button;

    .line 221
    .line 222
    new-instance v0, Lt1/f;

    .line 223
    .line 224
    const/16 v1, 0xb

    .line 225
    .line 226
    invoke-direct {v0, v1, v3}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_7
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 234
    .line 235
    if-eqz v0, :cond_a

    .line 236
    .line 237
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 238
    .line 239
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 248
    .line 249
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 257
    .line 258
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 259
    .line 260
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 268
    .line 269
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    if-eqz p1, :cond_9

    .line 275
    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-nez v0, :cond_8

    .line 281
    .line 282
    goto :goto_1

    .line 283
    :cond_8
    const/4 v1, 0x0

    .line 284
    :cond_9
    :goto_1
    if-nez v1, :cond_b

    .line 285
    .line 286
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 291
    .line 292
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->c:Landroid/widget/TextView;

    .line 293
    .line 294
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    .line 296
    .line 297
    goto :goto_2

    .line 298
    :cond_a
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->j:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 303
    .line 304
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->k:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 312
    .line 313
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 314
    .line 315
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/vehicle/MobileAccidentDifferentVehicleFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentDifferentCarBinding;->m:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 323
    .line 324
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 325
    .line 326
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 327
    .line 328
    .line 329
    :cond_b
    :goto_2
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 330
    .line 331
    return-object p1
.end method

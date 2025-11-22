.class public final Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;
.super Lee/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;",
        "Lee/a;",
        "Lme/c;",
        "event",
        "Ll9/m;",
        "onEvent",
        "<init>",
        "()V",
        "ui-barcode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final synthetic g:[Lda/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lda/m<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

.field public final b:Ll9/e;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lda/m;

    .line 3
    .line 4
    const-class v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;

    .line 5
    .line 6
    const-string v2, "mDynamicFieldFragmentBinding"

    .line 7
    .line 8
    const-string v3, "getMDynamicFieldFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;"

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v0, v3

    .line 16
    .line 17
    const-string v2, "mDynamicFieldViewModel"

    .line 18
    .line 19
    const-string v3, "getMDynamicFieldViewModel()Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldViewModel;"

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Landroidx/room/util/a;->b(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lda/l;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x1

    .line 26
    aput-object v1, v0, v2

    .line 27
    .line 28
    sput-object v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    .line 29
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const v0, 0x7f0d0064

    invoke-direct {p0, v0}, Lee/a;-><init>(I)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$b;->a:Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$b;

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/clearcut/d0;->C(Landroidx/fragment/app/Fragment;Lx9/l;)Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    const-class v0, Lbe/j;

    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v0

    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$c;

    invoke-direct {v1, p0, v0, v0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$c;-><init>(Landroidx/fragment/app/Fragment;Lda/d;Lda/d;)V

    new-instance v2, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$d;

    invoke-direct {v2, v0, v1, v0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$d;-><init>(Lda/d;Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$c;Lda/d;)V

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$d;->t(Ljava/lang/Object;Lda/m;)Ll9/e;

    move-result-object v0

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->b:Ll9/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;
    .locals 2

    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->g:[Lda/m;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;

    invoke-virtual {v1, p0, v0}, Ltr/gov/turkiye/edevlet/kapisi/common/ui/binding/FragmentViewBindingDelegate;->a(Landroidx/fragment/app/Fragment;Lda/m;)Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    return-object v0
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->f:Landroid/widget/ProgressBar;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 28
    .line 29
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->g:Landroid/widget/ScrollView;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final G()V
    .locals 10

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->c:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    xor-int/2addr v1, v2

    .line 9
    if-eqz v1, :cond_7

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v3, ""

    .line 21
    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lbe/i;

    .line 34
    .line 35
    iget-object v6, v4, Lbe/i;->b:Landroid/widget/EditText;

    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-object v7, v4, Lbe/i;->c:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;

    .line 46
    .line 47
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;->getFieldRegex()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v8

    .line 51
    invoke-static {v8, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    iget-object v4, v4, Lbe/i;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 56
    .line 57
    if-eqz v8, :cond_0

    .line 58
    .line 59
    new-instance v8, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v9, ";"

    .line 62
    .line 63
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;->getFieldQuery()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const/16 v7, 0x3a

    .line 74
    .line 75
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 101
    .line 102
    .line 103
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_0
    invoke-virtual {v7}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeVerifyFieldModel;->getFieldRegexMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v5

    .line 110
    invoke-virtual {v4, v5}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 114
    .line 115
    :goto_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    const/4 v4, 0x0

    .line 128
    if-eqz v1, :cond_3

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    check-cast v1, Ljava/lang/Boolean;

    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-nez v1, :cond_2

    .line 141
    .line 142
    const/4 v0, 0x0

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    const/4 v0, 0x1

    .line 145
    :goto_2
    if-eqz v0, :cond_7

    .line 146
    .line 147
    :try_start_0
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->g:Landroid/widget/ScrollView;

    .line 152
    .line 153
    const-string v1, "mDynamicFieldFragmentBinding.svFormContainer"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/d0;->x(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :catch_0
    nop

    .line 163
    :goto_3
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->e:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;

    .line 168
    .line 169
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeNoConnectionBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 170
    .line 171
    const/16 v1, 0x8

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->h:Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;

    .line 181
    .line 182
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/common/ui/databinding/IncludeSystemErrorBinding;->a:Lcom/google/android/material/card/MaterialCardView;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->f:Landroid/widget/ProgressBar;

    .line 192
    .line 193
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v1, "barkod:"

    .line 199
    .line 200
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->d:Ljava/lang/String;

    .line 204
    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    invoke-static {v0, v1, v3}, Landroidx/camera/camera2/internal/c;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    new-array v1, v2, [Ll9/g;

    .line 212
    .line 213
    new-instance v2, Ll9/g;

    .line 214
    .line 215
    const-string v3, "qrContent"

    .line 216
    .line 217
    invoke-direct {v2, v3, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    aput-object v2, v1, v4

    .line 221
    .line 222
    new-instance v0, Landroidx/work/Data$Builder;

    .line 223
    .line 224
    invoke-direct {v0}, Landroidx/work/Data$Builder;-><init>()V

    .line 225
    .line 226
    .line 227
    aget-object v1, v1, v4

    .line 228
    .line 229
    iget-object v2, v1, Ll9/g;->a:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v2, Ljava/lang/String;

    .line 232
    .line 233
    iget-object v1, v1, Ll9/g;->b:Ljava/lang/Object;

    .line 234
    .line 235
    invoke-virtual {v0, v2, v1}, Landroidx/work/Data$Builder;->put(Ljava/lang/String;Ljava/lang/Object;)Landroidx/work/Data$Builder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Landroidx/work/Data$Builder;->build()Landroidx/work/Data;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    const-string v1, "dataBuilder.build()"

    .line 243
    .line 244
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-boolean v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->e:Z

    .line 248
    .line 249
    if-eqz v1, :cond_4

    .line 250
    .line 251
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 252
    .line 253
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyLoginWorker;

    .line 254
    .line 255
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 256
    .line 257
    .line 258
    goto :goto_4

    .line 259
    :cond_4
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 260
    .line 261
    const-class v2, Ltr/gov/turkiye/edevlet/kapisi/common/worker/barcode/BarcodeVerifyWorker;

    .line 262
    .line 263
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 264
    .line 265
    .line 266
    :goto_4
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 271
    .line 272
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 277
    .line 278
    const-string v1, "if (mFromLoginPage) {\n  \u2026erData).build()\n        }"

    .line 279
    .line 280
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->f:Landroid/content/Context;

    .line 284
    .line 285
    if-eqz v1, :cond_5

    .line 286
    .line 287
    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 292
    .line 293
    .line 294
    goto :goto_5

    .line 295
    :cond_5
    const-string v0, "mInflaterContext"

    .line 296
    .line 297
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    throw v5

    .line 301
    :cond_6
    const-string v0, "mBarcodeNumber"

    .line 302
    .line 303
    invoke-static {v0}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw v5

    .line 307
    :cond_7
    :goto_5
    return-void
.end method

.method public final invalidate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->b:Ll9/e;

    .line 2
    .line 3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lbe/j;

    .line 8
    .line 9
    new-instance v1, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$a;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment$a;-><init>(Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lx5/a;->u(Lr0/z;Lx9/l;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lc5/w;->v(Landroidx/fragment/app/Fragment;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public final onEvent(Lme/c;)V
    .locals 7
    .annotation runtime Lqd/i;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->F()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_f

    .line 5
    .line 6
    iget-boolean v0, p1, Lme/c;->a:Z

    .line 7
    .line 8
    const-string v1, "mInflaterContext"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-eqz v0, :cond_5

    .line 14
    .line 15
    const v0, 0x7f1300a0

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v3, "getString(R.string.filename_pdf)"

    .line 23
    .line 24
    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Lme/c;->b:Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/barcode/BarcodeData;->getDocumentContent()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move-object p1, v4

    .line 37
    :goto_0
    if-eqz p1, :cond_2

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 49
    :goto_2
    if-nez v3, :cond_f

    .line 50
    .line 51
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->f:Landroid/content/Context;

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    const-string v5, "content"

    .line 56
    .line 57
    invoke-static {p1, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lje/a;->a(Ljava/lang/String;)[B

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    goto :goto_3

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    goto :goto_4

    .line 75
    :catch_0
    :goto_3
    :try_start_1
    sget-object p1, Ll9/m;->a:Ll9/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    invoke-static {v3, v4}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    if-eqz v2, :cond_f

    .line 81
    .line 82
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->f:Landroid/content/Context;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-static {p1, v0}, Lde/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto/16 :goto_9

    .line 90
    .line 91
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v4

    .line 95
    :goto_4
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    :catchall_1
    move-exception v0

    .line 97
    invoke-static {v3, p1}, Lx5/a;->f(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v4

    .line 105
    :cond_5
    iget-object p1, p1, Lme/c;->c:Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;

    .line 106
    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ErrorResult;->getThrowable()Ljava/lang/Throwable;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    goto :goto_5

    .line 114
    :cond_6
    move-object p1, v4

    .line 115
    :goto_5
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/LoginException;

    .line 116
    .line 117
    if-eqz v0, :cond_8

    .line 118
    .line 119
    const-string p1, "action.login.open"

    .line 120
    .line 121
    const v0, 0x8000

    .line 122
    .line 123
    .line 124
    invoke-static {p1, v0}, Landroid/support/v4/media/a;->b(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 129
    .line 130
    const/16 v1, 0x22

    .line 131
    .line 132
    if-lt v0, v1, :cond_7

    .line 133
    .line 134
    const-string v0, "tr.gov.turkiye.edevlet.kapisi"

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    :cond_7
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-eqz p1, :cond_f

    .line 147
    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_9

    .line 152
    .line 153
    :cond_8
    instance-of v0, p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 154
    .line 155
    if-eqz v0, :cond_9

    .line 156
    .line 157
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;

    .line 158
    .line 159
    invoke-virtual {p1}, Ltr/gov/turkiye/edevlet/kapisi/data/extension/ServiceErrorExceptionWithMessage;->getErrorMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    goto :goto_6

    .line 164
    :cond_9
    move-object p1, v4

    .line 165
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_a

    .line 170
    .line 171
    const-string v5, "layout_inflater"

    .line 172
    .line 173
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    goto :goto_7

    .line 178
    :cond_a
    move-object v0, v4

    .line 179
    :goto_7
    const-string v5, "null cannot be cast to non-null type android.view.LayoutInflater"

    .line 180
    .line 181
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    check-cast v0, Landroid/view/LayoutInflater;

    .line 185
    .line 186
    const v5, 0x7f0d010a

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v5, "inflater.inflate(R.layou\u2026esult_error_dialog, null)"

    .line 194
    .line 195
    invoke-static {v0, v5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    const v5, 0x7f0a0367

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    check-cast v5, Landroid/widget/TextView;

    .line 206
    .line 207
    if-eqz p1, :cond_b

    .line 208
    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 210
    .line 211
    .line 212
    move-result v6

    .line 213
    if-nez v6, :cond_c

    .line 214
    .line 215
    :cond_b
    const/4 v2, 0x1

    .line 216
    :cond_c
    if-nez v2, :cond_d

    .line 217
    .line 218
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    goto :goto_8

    .line 222
    :cond_d
    const p1, 0x7f130023

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(I)V

    .line 226
    .line 227
    .line 228
    :goto_8
    new-instance p1, Lv/e;

    .line 229
    .line 230
    iget-object v2, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->f:Landroid/content/Context;

    .line 231
    .line 232
    if-eqz v2, :cond_e

    .line 233
    .line 234
    invoke-direct {p1, v2}, Lv/e;-><init>(Landroid/content/Context;)V

    .line 235
    .line 236
    .line 237
    invoke-static {p1, v0}, Lc5/u;->n(Lv/e;Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p1}, Lv/e;->show()V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1, v3}, Lv/e;->b(Z)V

    .line 244
    .line 245
    .line 246
    const v0, 0x7f130020

    .line 247
    .line 248
    .line 249
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    const/4 v1, 0x6

    .line 254
    invoke-static {p1, v0, v4, v4, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 255
    .line 256
    .line 257
    sget-object v0, Lbe/e;->a:Lbe/e;

    .line 258
    .line 259
    const/4 v1, 0x3

    .line 260
    invoke-static {p1, v4, v4, v0, v1}, Lv/e;->e(Lv/e;Ljava/lang/Integer;Ljava/lang/String;Lx9/l;I)V

    .line 261
    .line 262
    .line 263
    goto :goto_9

    .line 264
    :cond_e
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v4

    .line 268
    :cond_f
    :goto_9
    invoke-static {}, Lqd/b;->b()Lqd/b;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    const-class v0, Lme/c;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Lqd/b;->l(Ljava/lang/Class;)V

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->n(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lqd/b;->b()Lqd/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lqd/b;->k(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string p2, "view.context"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->f:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const-string p2, "isFromLogin"

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->e:Z

    .line 33
    .line 34
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const/4 p2, 0x0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    const-string v0, "barcodeNumber"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move-object p1, p2

    .line 49
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->d:Ljava/lang/String;

    .line 54
    .line 55
    iget-boolean p1, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->e:Z

    .line 56
    .line 57
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->b:Ll9/e;

    .line 58
    .line 59
    const-string v1, "mBarcodeNumber"

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lbe/j;

    .line 68
    .line 69
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->d:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    new-instance v2, Lbe/k;

    .line 77
    .line 78
    invoke-direct {v2, p1, v0, p2}, Lbe/k;-><init>(Lbe/j;Ljava/lang/String;Lp9/d;)V

    .line 79
    .line 80
    .line 81
    const/4 v0, 0x3

    .line 82
    const/4 v3, 0x0

    .line 83
    iget-object v4, p1, Lr0/z;->c:Lnc/a0;

    .line 84
    .line 85
    invoke-static {v4, p2, v3, v2, v0}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 86
    .line 87
    .line 88
    new-instance v0, Lbe/l;

    .line 89
    .line 90
    invoke-direct {v0, p1, p2}, Lbe/l;-><init>(Lbe/j;Lp9/d;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p1, Lbe/j;->h:Lbe/n;

    .line 94
    .line 95
    invoke-static {v4, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p2

    .line 103
    :cond_3
    invoke-interface {v0}, Ll9/e;->getValue()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lbe/j;

    .line 108
    .line 109
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->d:Ljava/lang/String;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lbe/j;->d(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->c:Landroid/widget/TextView;

    .line 121
    .line 122
    iget-object v0, p0, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->d:Ljava/lang/String;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;->E()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iget-object p1, p1, Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;->b:Landroid/widget/Button;

    .line 134
    .line 135
    new-instance p2, Lt1/f;

    .line 136
    .line 137
    const/4 v0, 0x2

    .line 138
    invoke-direct {p2, v0, p0}, Lt1/f;-><init>(ILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    throw p2

    .line 149
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p2
.end method

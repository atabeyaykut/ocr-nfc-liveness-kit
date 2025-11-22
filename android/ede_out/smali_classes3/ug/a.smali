.class public final Lug/a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lug/c;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;)V
    .locals 0

    iput-object p1, p0, Lug/a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    check-cast p1, Lug/c;

    .line 2
    .line 3
    const-string v0, "selectedInstitutionCategory"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->d:[Lda/m;

    .line 9
    .line 10
    iget-object v0, p0, Lug/a;->a:Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v1, p1, Lug/c;->b:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "getString(resourceId)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "tr-TR"

    .line 27
    .line 28
    invoke-static {v2}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "forLanguageTag(\"tr-TR\")"

    .line 33
    .line 34
    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lmc/j;->v(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v2, 0x2

    .line 42
    const/4 v3, 0x3

    .line 43
    const-string v4, "categoryCode"

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x1

    .line 47
    iget v7, p1, Lug/c;->c:I

    .line 48
    .line 49
    if-ne v7, v3, :cond_0

    .line 50
    .line 51
    new-array v1, v6, [Ll9/g;

    .line 52
    .line 53
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    new-instance v8, Ll9/g;

    .line 58
    .line 59
    invoke-direct {v8, v4, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    aput-object v8, v1, v5

    .line 63
    .line 64
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const v7, 0x7f0a0175

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    new-array v8, v2, [Ll9/g;

    .line 77
    .line 78
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    iget-boolean v9, p1, Lug/c;->e:Z

    .line 83
    .line 84
    const-string v10, "title"

    .line 85
    .line 86
    if-eqz v9, :cond_1

    .line 87
    .line 88
    new-instance v9, Ll9/g;

    .line 89
    .line 90
    invoke-direct {v9, v4, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    aput-object v9, v8, v5

    .line 94
    .line 95
    new-instance v4, Ll9/g;

    .line 96
    .line 97
    invoke-direct {v4, v10, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    aput-object v4, v8, v6

    .line 101
    .line 102
    invoke-static {v8}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const v7, 0x7f0a01f0

    .line 111
    .line 112
    .line 113
    invoke-virtual {v4, v7, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->E(Lug/c;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    new-instance v9, Ll9/g;

    .line 121
    .line 122
    invoke-direct {v9, v4, v7}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    aput-object v9, v8, v5

    .line 126
    .line 127
    new-instance v4, Ll9/g;

    .line 128
    .line 129
    invoke-direct {v4, v10, v1}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    aput-object v4, v8, v6

    .line 133
    .line 134
    invoke-static {v8}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const v7, 0x7f0a01f3

    .line 143
    .line 144
    .line 145
    :goto_0
    invoke-virtual {v4, v7, v1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 146
    .line 147
    .line 148
    :goto_1
    :try_start_0
    iget p1, p1, Lug/c;->a:I

    .line 149
    .line 150
    if-eq p1, v6, :cond_6

    .line 151
    .line 152
    if-eq p1, v2, :cond_5

    .line 153
    .line 154
    if-eq p1, v3, :cond_4

    .line 155
    .line 156
    const/4 v1, 0x4

    .line 157
    if-eq p1, v1, :cond_3

    .line 158
    .line 159
    const/4 v1, 0x5

    .line 160
    if-eq p1, v1, :cond_2

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_2
    const-string p1, "University"

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_3
    const-string p1, "Firm"

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_4
    const-string p1, "Company"

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_5
    const-string p1, "Municipality"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_6
    :goto_2
    const-string p1, "Institutions"

    .line 176
    .line 177
    :goto_3
    :try_start_1
    iget-object v0, v0, Ltr/gov/turkiye/edevlet/kapisi/services/institution/InstitutionFragment;->a:Lcom/google/firebase/analytics/FirebaseAnalytics;

    .line 178
    .line 179
    if-eqz v0, :cond_7

    .line 180
    .line 181
    const-string v1, "EDK_Services"

    .line 182
    .line 183
    new-instance v3, Lc5/b4;

    .line 184
    .line 185
    invoke-direct {v3, v2, v5}, Lc5/b4;-><init>(II)V

    .line 186
    .line 187
    .line 188
    const-string v2, "action"

    .line 189
    .line 190
    invoke-virtual {v3, v2, p1}, Lc5/b4;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object p1, v3, Lc5/b4;->a:Ljava/lang/Object;

    .line 194
    .line 195
    check-cast p1, Landroid/os/Bundle;

    .line 196
    .line 197
    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_7
    const-string p1, "firebaseAnalytics"

    .line 202
    .line 203
    invoke-static {p1}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    const/4 p1, 0x0

    .line 207
    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :catch_0
    :goto_4
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 209
    .line 210
    return-object p1
.end method

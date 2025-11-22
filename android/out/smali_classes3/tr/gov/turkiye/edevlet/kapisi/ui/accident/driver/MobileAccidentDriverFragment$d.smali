.class public final Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;
.super Lr9/i;
.source "SourceFile"

# interfaces
.implements Lx9/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleSaveModel;",
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
    c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.MobileAccidentDriverFragment$onCreate$2"
    f = "MobileAccidentDriverFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;


# direct methods
.method public constructor <init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;Lp9/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;",
            "Lp9/d<",
            "-",
            "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

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

    new-instance v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;

    iget-object v1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    invoke-direct {v0, v1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;-><init>(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;Lp9/d;)V

    iput-object p1, v0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->a:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->create(Ljava/lang/Object;Lp9/d;)Lp9/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;

    .line 10
    .line 11
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {p1}, Lc5/w;->F(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->a:Ljava/lang/Object;

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
    const/4 v2, 0x0

    .line 18
    iget-object v3, p0, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment$d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 23
    .line 24
    const-string v0, "Loading save vehicle ***"

    .line 25
    .line 26
    new-array v4, v2, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p1, v0, v4}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

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
    if-eqz v1, :cond_c

    .line 44
    .line 45
    invoke-static {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->F(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_3

    .line 49
    .line 50
    :cond_2
    instance-of v0, p1, Lr0/c1;

    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    const-string v5, "mSelectedVehicle"

    .line 54
    .line 55
    if-eqz v0, :cond_7

    .line 56
    .line 57
    sget-object p1, Lyd/a;->a:Lyd/a$a;

    .line 58
    .line 59
    const-string v0, "Success Vehicle ***"

    .line 60
    .line 61
    new-array v6, v2, [Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p1, v0, v6}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->e:Lv/e;

    .line 67
    .line 68
    if-eqz p1, :cond_3

    .line 69
    .line 70
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->f:Lv/e;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 78
    .line 79
    .line 80
    :cond_4
    iget-boolean p1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->l:Z

    .line 81
    .line 82
    if-eqz p1, :cond_c

    .line 83
    .line 84
    iput-boolean v2, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->l:Z

    .line 85
    .line 86
    new-array p1, v1, [Ll9/g;

    .line 87
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->m:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 94
    .line 95
    if-eqz v1, :cond_6

    .line 96
    .line 97
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->getBrandName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v1, " - "

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->m:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 110
    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    invoke-virtual {v1}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;->getTradeName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Ll9/g;

    .line 125
    .line 126
    const-string v4, "companyBrand"

    .line 127
    .line 128
    invoke-direct {v1, v4, v0}, Ll9/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    aput-object v1, p1, v2

    .line 132
    .line 133
    invoke-static {p1}, Landroidx/core/os/BundleKt;->bundleOf([Ll9/g;)Landroid/os/Bundle;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v3}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const v1, 0x7f0a0276

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1, p1}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_5
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v4

    .line 152
    :cond_6
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw v4

    .line 156
    :cond_7
    instance-of v0, p1, Lr0/i;

    .line 157
    .line 158
    if-eqz v0, :cond_c

    .line 159
    .line 160
    sget-object v0, Lyd/a;->a:Lyd/a$a;

    .line 161
    .line 162
    const-string v1, "Error save vehicle ***"

    .line 163
    .line 164
    new-array v2, v2, [Ljava/lang/Object;

    .line 165
    .line 166
    invoke-virtual {v0, v1, v2}, Lyd/a$a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->n:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 170
    .line 171
    if-nez v0, :cond_9

    .line 172
    .line 173
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->m:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 174
    .line 175
    if-eqz v0, :cond_8

    .line 176
    .line 177
    iput-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->n:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 178
    .line 179
    move-object v0, p1

    .line 180
    check-cast v0, Lr0/i;

    .line 181
    .line 182
    iget-object v0, v0, Lr0/i;->b:Ljava/lang/Throwable;

    .line 183
    .line 184
    invoke-static {v3, v0}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;Ljava/lang/Throwable;)V

    .line 185
    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_8
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw v4

    .line 192
    :cond_9
    :goto_2
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->n:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 193
    .line 194
    iget-object v1, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->m:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 195
    .line 196
    if-eqz v1, :cond_b

    .line 197
    .line 198
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-nez v0, :cond_c

    .line 203
    .line 204
    iget-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->m:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 205
    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    iput-object v0, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->n:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/VehicleInfo;

    .line 209
    .line 210
    check-cast p1, Lr0/i;

    .line 211
    .line 212
    iget-object p1, p1, Lr0/i;->b:Ljava/lang/Throwable;

    .line 213
    .line 214
    invoke-static {v3, p1}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;->E(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/driver/MobileAccidentDriverFragment;Ljava/lang/Throwable;)V

    .line 215
    .line 216
    .line 217
    goto :goto_3

    .line 218
    :cond_a
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    throw v4

    .line 222
    :cond_b
    invoke-static {v5}, Lkotlin/jvm/internal/h;->n(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw v4

    .line 226
    :cond_c
    :goto_3
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 227
    .line 228
    return-object p1
.end method

.class public final Lga/g$c;
.super Lga/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Lma/l0;

.field public final b:Lgb/m;

.field public final c:Ljb/a$c;

.field public final d:Lib/c;

.field public final e:Lib/g;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lma/l0;Lgb/m;Ljb/a$c;Lib/c;Lib/g;)V
    .locals 3

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lga/g;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lga/g$c;->a:Lma/l0;

    .line 20
    .line 21
    iput-object p2, p0, Lga/g$c;->b:Lgb/m;

    .line 22
    .line 23
    iput-object p3, p0, Lga/g$c;->c:Ljb/a$c;

    .line 24
    .line 25
    iput-object p4, p0, Lga/g$c;->d:Lib/c;

    .line 26
    .line 27
    iput-object p5, p0, Lga/g$c;->e:Lib/g;

    .line 28
    .line 29
    iget v0, p3, Ljb/a$c;->b:I

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    and-int/2addr v0, v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    iget-object p2, p3, Ljb/a$c;->e:Ljb/a$b;

    .line 47
    .line 48
    iget p2, p2, Ljb/a$b;->c:I

    .line 49
    .line 50
    invoke-interface {p4, p2}, Lib/c;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object p2, p3, Ljb/a$c;->e:Ljb/a$b;

    .line 58
    .line 59
    iget p2, p2, Ljb/a$b;->d:I

    .line 60
    .line 61
    invoke-interface {p4, p2}, Lib/c;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_1
    invoke-static {p2, p4, p5, v2}, Lkb/h;->b(Lgb/m;Lib/c;Lib/g;Z)Lkb/d$a;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    if-eqz p2, :cond_6

    .line 79
    .line 80
    new-instance p3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    iget-object p5, p2, Lkb/d$a;->a:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {p5}, Lva/w;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p5

    .line 91
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Lma/z0;->b()Lma/j;

    .line 95
    .line 96
    .line 97
    move-result-object p5

    .line 98
    const-string v0, "descriptor.containingDeclaration"

    .line 99
    .line 100
    invoke-static {p5, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1}, Lma/z;->getVisibility()Lma/q;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    sget-object v1, Lma/p;->d:Lma/p$g;

    .line 108
    .line 109
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    const-string v1, "$"

    .line 114
    .line 115
    if-eqz v0, :cond_4

    .line 116
    .line 117
    instance-of v0, p5, Lac/d;

    .line 118
    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    check-cast p5, Lac/d;

    .line 122
    .line 123
    sget-object p1, Ljb/a;->i:Lmb/h$e;

    .line 124
    .line 125
    const-string v0, "classModuleName"

    .line 126
    .line 127
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p5, p5, Lac/d;->e:Lgb/b;

    .line 131
    .line 132
    invoke-static {p5, p1}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Ljava/lang/Integer;

    .line 137
    .line 138
    if-eqz p1, :cond_2

    .line 139
    .line 140
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-interface {p4, p1}, Lib/c;->getString(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    if-nez p1, :cond_3

    .line 149
    .line 150
    :cond_2
    const-string p1, "main"

    .line 151
    .line 152
    :cond_3
    sget-object p4, Llb/g;->a:Lmc/d;

    .line 153
    .line 154
    iget-object p4, p4, Lmc/d;->a:Ljava/util/regex/Pattern;

    .line 155
    .line 156
    invoke-virtual {p4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    const-string p4, "_"

    .line 161
    .line 162
    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string p4, "nativePattern.matcher(in\u2026).replaceAll(replacement)"

    .line 167
    .line 168
    invoke-static {p1, p4}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    goto :goto_1

    .line 176
    :cond_4
    invoke-interface {p1}, Lma/z;->getVisibility()Lma/q;

    .line 177
    .line 178
    .line 179
    move-result-object p4

    .line 180
    sget-object v0, Lma/p;->a:Lma/p$d;

    .line 181
    .line 182
    invoke-static {p4, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result p4

    .line 186
    if-eqz p4, :cond_5

    .line 187
    .line 188
    instance-of p4, p5, Lma/e0;

    .line 189
    .line 190
    if-eqz p4, :cond_5

    .line 191
    .line 192
    check-cast p1, Lac/k;

    .line 193
    .line 194
    iget-object p1, p1, Lac/k;->I:Lac/g;

    .line 195
    .line 196
    instance-of p4, p1, Leb/n;

    .line 197
    .line 198
    if-eqz p4, :cond_5

    .line 199
    .line 200
    check-cast p1, Leb/n;

    .line 201
    .line 202
    iget-object p4, p1, Leb/n;->c:Ltb/b;

    .line 203
    .line 204
    if-eqz p4, :cond_5

    .line 205
    .line 206
    new-instance p4, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p1, Leb/n;->b:Ltb/b;

    .line 212
    .line 213
    invoke-virtual {p1}, Ltb/b;->e()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    const-string p5, "className.internalName"

    .line 218
    .line 219
    invoke-static {p1, p5}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    const/16 p5, 0x2f

    .line 223
    .line 224
    invoke-static {p5, p1, p1}, Lmc/n;->d0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    invoke-static {p1}, Llb/f;->t(Ljava/lang/String;)Llb/f;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Llb/f;->o()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    goto :goto_1

    .line 244
    :cond_5
    const-string p1, ""

    .line 245
    .line 246
    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string p1, "()"

    .line 250
    .line 251
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    iget-object p1, p2, Lkb/d$a;->b:Ljava/lang/String;

    .line 255
    .line 256
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    :goto_2
    iput-object p1, p0, Lga/g$c;->f:Ljava/lang/String;

    .line 264
    .line 265
    return-void

    .line 266
    :cond_6
    new-instance p2, Ll9/f;

    .line 267
    .line 268
    new-instance p3, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    const-string p4, "No field signature for property: "

    .line 271
    .line 272
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-direct {p2, p1, v2}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    throw p2
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lga/g$c;->f:Ljava/lang/String;

    return-object v0
.end method

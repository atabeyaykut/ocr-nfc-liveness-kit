.class public final Lga/q0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/o;
.implements Lga/q;


# static fields
.field public static final synthetic d:[Lda/m;
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
.field public final a:Lma/w0;

.field public final b:Lga/t0$a;

.field public final c:Lga/r0;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lda/m;

    new-instance v1, Lkotlin/jvm/internal/r;

    const-class v2, Lga/q0;

    invoke-static {v2}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    move-result-object v2

    const-string v3, "upperBounds"

    const-string v4, "getUpperBounds()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/r;-><init>(Lda/f;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/w;->c(Lkotlin/jvm/internal/q;)Lda/l;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lga/q0;->d:[Lda/m;

    return-void
.end method

.method public constructor <init>(Lga/r0;Lma/w0;)V
    .locals 4

    .line 1
    const-string v0, "descriptor"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lga/q0;->a:Lma/w0;

    .line 10
    .line 11
    new-instance v0, Lga/q0$a;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lga/q0$a;-><init>(Lga/q0;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lga/t0;->c(Lx9/a;)Lga/t0$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lga/q0;->b:Lga/t0$a;

    .line 21
    .line 22
    if-nez p1, :cond_9

    .line 23
    .line 24
    invoke-interface {p2}, Lma/k;->b()Lma/j;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string p2, "descriptor.containingDeclaration"

    .line 29
    .line 30
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    instance-of p2, p1, Lma/e;

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    check-cast p1, Lma/e;

    .line 38
    .line 39
    invoke-static {p1}, Lga/q0;->b(Lma/e;)Lga/n;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_4

    .line 44
    :cond_0
    instance-of p2, p1, Lma/b;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-eqz p2, :cond_8

    .line 48
    .line 49
    move-object p2, p1

    .line 50
    check-cast p2, Lma/b;

    .line 51
    .line 52
    invoke-interface {p2}, Lma/k;->b()Lma/j;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v1, "declaration.containingDeclaration"

    .line 57
    .line 58
    invoke-static {p2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    instance-of v1, p2, Lma/e;

    .line 62
    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    check-cast p2, Lma/e;

    .line 66
    .line 67
    invoke-static {p2}, Lga/q0;->b(Lma/e;)Lga/n;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    goto :goto_3

    .line 72
    :cond_1
    instance-of p2, p1, Lac/h;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    if-eqz p2, :cond_2

    .line 76
    .line 77
    move-object p2, p1

    .line 78
    check-cast p2, Lac/h;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    move-object p2, v1

    .line 82
    :goto_0
    if-eqz p2, :cond_7

    .line 83
    .line 84
    invoke-interface {p2}, Lac/h;->X()Lac/g;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    instance-of v3, v2, Leb/n;

    .line 89
    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    move-object v2, v1

    .line 93
    :cond_3
    check-cast v2, Leb/n;

    .line 94
    .line 95
    if-eqz v2, :cond_4

    .line 96
    .line 97
    iget-object v2, v2, Leb/n;->d:Leb/s;

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    move-object v2, v1

    .line 101
    :goto_1
    instance-of v3, v2, Lra/e;

    .line 102
    .line 103
    if-nez v3, :cond_5

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move-object v1, v2

    .line 107
    :goto_2
    check-cast v1, Lra/e;

    .line 108
    .line 109
    if-eqz v1, :cond_6

    .line 110
    .line 111
    iget-object v1, v1, Lra/e;->a:Ljava/lang/Class;

    .line 112
    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    invoke-static {v1}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>"

    .line 120
    .line 121
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    check-cast p2, Lga/n;

    .line 125
    .line 126
    :goto_3
    new-instance v0, Lga/d;

    .line 127
    .line 128
    invoke-direct {v0, p2}, Lga/d;-><init>(Lga/s;)V

    .line 129
    .line 130
    .line 131
    sget-object p2, Ll9/m;->a:Ll9/m;

    .line 132
    .line 133
    invoke-interface {p1, v0, p2}, Lma/j;->o0(Lma/l;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    :goto_4
    const-string p2, "when (val declaration = \u2026 $declaration\")\n        }"

    .line 138
    .line 139
    invoke-static {p1, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    check-cast p1, Lga/r0;

    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_6
    new-instance p1, Ll9/f;

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    const-string v2, "Container of deserialized member is not resolved: "

    .line 150
    .line 151
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    invoke-direct {p1, p2, v0}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    throw p1

    .line 165
    :cond_7
    new-instance p2, Ll9/f;

    .line 166
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v2, "Non-class callable descriptor must be deserialized: "

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {p2, p1, v0}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 182
    .line 183
    .line 184
    throw p2

    .line 185
    :cond_8
    new-instance p2, Ll9/f;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v2, "Unknown type parameter container: "

    .line 190
    .line 191
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-direct {p2, p1, v0}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    throw p2

    .line 205
    :cond_9
    :goto_5
    iput-object p1, p0, Lga/q0;->c:Lga/r0;

    .line 206
    .line 207
    return-void
.end method

.method public static b(Lma/e;)Lga/n;
    .locals 3

    .line 1
    invoke-static {p0}, Lga/z0;->j(Lma/e;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/w;->a(Ljava/lang/Class;)Lda/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    check-cast v0, Lga/n;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_1
    new-instance v0, Ll9/f;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v2, "Type parameter container is not resolved: "

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0}, Lma/e;->b()Lma/j;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-direct {v0, p0, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget-object v0, p0, Lga/q0;->a:Lma/w0;

    invoke-interface {v0}, Lma/w0;->I()Lcc/t1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    new-instance v0, Lj7/p;

    invoke-direct {v0}, Lj7/p;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x2

    :cond_2
    :goto_0
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lga/q0;

    if-eqz v0, :cond_0

    check-cast p1, Lga/q0;

    iget-object v0, p1, Lga/q0;->c:Lga/r0;

    iget-object v1, p0, Lga/q0;->c:Lga/r0;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lga/q0;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lga/q0;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lga/q0;->a:Lma/w0;

    invoke-interface {v0}, Lma/j;->getName()Llb/f;

    move-result-object v0

    invoke-virtual {v0}, Llb/f;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "descriptor.name.asString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUpperBounds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lda/n;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lga/q0;->d:[Lda/m;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    iget-object v0, p0, Lga/q0;->b:Lga/t0$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lga/t0$a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "<get-upperBounds>(...)"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Ljava/util/List;

    .line 18
    .line 19
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lga/q0;->c:Lga/r0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lga/q0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final i()Lma/g;
    .locals 1

    iget-object v0, p0, Lga/q0;->a:Lma/w0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lga/q0;->a()I

    move-result v1

    invoke-static {v1}, Lg/d;->c(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "out "

    goto :goto_0

    :cond_1
    const-string v1, "in "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lga/q0;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

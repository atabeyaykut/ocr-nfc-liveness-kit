.class public final Led/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Led/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Led/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final a:Led/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Led/z$a;

    invoke-direct {v0}, Led/z$a;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, "separator"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Led/z;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Led/h;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/z;->a:Led/h;

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Led/z;

    .line 2
    .line 3
    const-string v0, "other"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Led/z;->a:Led/h;

    .line 9
    .line 10
    iget-object p1, p1, Led/z;->a:Led/h;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Led/h;->o(Led/h;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Led/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Led/z;

    .line 6
    .line 7
    iget-object p1, p1, Led/z;->a:Led/h;

    .line 8
    .line 9
    iget-object v0, p0, Led/z;->a:Led/h;

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Led/z;->a:Led/h;

    invoke-virtual {v0}, Led/h;->hashCode()I

    move-result v0

    return v0
.end method

.method public final n()Ljava/util/ArrayList;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lfd/l;->a(Led/z;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    const/16 v3, 0x5c

    .line 12
    .line 13
    iget-object v4, p0, Led/z;->a:Led/h;

    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v4}, Led/h;->r()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ge v1, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v4, v1}, Led/h;->x(I)B

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    int-to-byte v5, v3

    .line 30
    if-ne v2, v5, :cond_1

    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    :cond_1
    :goto_0
    invoke-virtual {v4}, Led/h;->r()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-ge v1, v2, :cond_5

    .line 39
    .line 40
    move v5, v1

    .line 41
    :goto_1
    add-int/lit8 v6, v1, 0x1

    .line 42
    .line 43
    invoke-virtual {v4, v1}, Led/h;->x(I)B

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    const/16 v8, 0x2f

    .line 48
    .line 49
    int-to-byte v8, v8

    .line 50
    if-eq v7, v8, :cond_2

    .line 51
    .line 52
    invoke-virtual {v4, v1}, Led/h;->x(I)B

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    int-to-byte v8, v3

    .line 57
    if-ne v7, v8, :cond_3

    .line 58
    .line 59
    :cond_2
    invoke-virtual {v4, v5, v1}, Led/h;->C(II)Led/h;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move v5, v6

    .line 67
    :cond_3
    if-lt v6, v2, :cond_4

    .line 68
    .line 69
    move v1, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move v1, v6

    .line 72
    goto :goto_1

    .line 73
    :cond_5
    :goto_2
    invoke-virtual {v4}, Led/h;->r()I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-ge v1, v2, :cond_6

    .line 78
    .line 79
    invoke-virtual {v4}, Led/h;->r()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    invoke-virtual {v4, v1, v2}, Led/h;->C(II)Led/h;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    :cond_6
    return-object v0
.end method

.method public final o()Led/z;
    .locals 9

    .line 1
    sget-object v0, Lfd/l;->d:Led/h;

    .line 2
    .line 3
    iget-object v1, p0, Led/z;->a:Led/h;

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_c

    .line 10
    .line 11
    sget-object v2, Lfd/l;->a:Led/h;

    .line 12
    .line 13
    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_c

    .line 18
    .line 19
    sget-object v3, Lfd/l;->b:Led/h;

    .line 20
    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-nez v4, :cond_c

    .line 26
    .line 27
    sget-object v4, Lfd/l;->e:Led/h;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    const-string v5, "suffix"

    .line 33
    .line 34
    invoke-static {v4, v5}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Led/h;->r()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    iget-object v6, v4, Led/h;->a:[B

    .line 42
    .line 43
    array-length v7, v6

    .line 44
    sub-int/2addr v5, v7

    .line 45
    array-length v6, v6

    .line 46
    invoke-virtual {v1, v5, v4, v6}, Led/h;->B(ILed/h;I)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    const/4 v6, 0x0

    .line 52
    const/4 v7, 0x2

    .line 53
    if-eqz v4, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Led/h;->r()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-ne v4, v7, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v1}, Led/h;->r()I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    add-int/lit8 v4, v4, -0x3

    .line 67
    .line 68
    invoke-virtual {v1, v4, v2, v5}, Led/h;->B(ILed/h;I)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_1

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Led/h;->r()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    add-int/lit8 v4, v4, -0x3

    .line 80
    .line 81
    invoke-virtual {v1, v4, v3, v5}, Led/h;->B(ILed/h;I)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_2

    .line 86
    .line 87
    :goto_0
    const/4 v4, 0x1

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    const/4 v4, 0x0

    .line 90
    :goto_1
    if-eqz v4, :cond_3

    .line 91
    .line 92
    goto/16 :goto_5

    .line 93
    .line 94
    :cond_3
    invoke-static {v1, v2}, Led/h;->z(Led/h;Led/h;)I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    const/4 v4, -0x1

    .line 99
    if-eq v2, v4, :cond_4

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    invoke-static {v1, v3}, Led/h;->z(Led/h;Led/h;)I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    :goto_2
    if-ne v2, v7, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Led/z;->t()Ljava/lang/Character;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    if-eqz v8, :cond_6

    .line 113
    .line 114
    invoke-virtual {v1}, Led/h;->r()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    const/4 v2, 0x3

    .line 119
    if-ne v0, v2, :cond_5

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_5
    new-instance v0, Led/z;

    .line 123
    .line 124
    invoke-static {v1, v6, v2, v5}, Led/h;->E(Led/h;III)Led/h;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-direct {v0, v1}, Led/z;-><init>(Led/h;)V

    .line 129
    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_6
    if-ne v2, v5, :cond_7

    .line 133
    .line 134
    const-string v8, "prefix"

    .line 135
    .line 136
    invoke-static {v3, v8}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Led/h;->r()I

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    invoke-virtual {v1, v6, v3, v8}, Led/h;->B(ILed/h;I)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_7
    if-ne v2, v4, :cond_9

    .line 151
    .line 152
    invoke-virtual {p0}, Led/z;->t()Ljava/lang/Character;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-eqz v3, :cond_9

    .line 157
    .line 158
    invoke-virtual {v1}, Led/h;->r()I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-ne v0, v7, :cond_8

    .line 163
    .line 164
    goto :goto_5

    .line 165
    :cond_8
    new-instance v0, Led/z;

    .line 166
    .line 167
    invoke-static {v1, v6, v7, v5}, Led/h;->E(Led/h;III)Led/h;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v0, v1}, Led/z;-><init>(Led/h;)V

    .line 172
    .line 173
    .line 174
    goto :goto_4

    .line 175
    :cond_9
    if-ne v2, v4, :cond_a

    .line 176
    .line 177
    new-instance v1, Led/z;

    .line 178
    .line 179
    invoke-direct {v1, v0}, Led/z;-><init>(Led/h;)V

    .line 180
    .line 181
    .line 182
    goto :goto_6

    .line 183
    :cond_a
    new-instance v0, Led/z;

    .line 184
    .line 185
    if-nez v2, :cond_b

    .line 186
    .line 187
    invoke-static {v1, v6, v5, v5}, Led/h;->E(Led/h;III)Led/h;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    goto :goto_3

    .line 192
    :cond_b
    invoke-static {v1, v6, v2, v5}, Led/h;->E(Led/h;III)Led/h;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    :goto_3
    invoke-direct {v0, v1}, Led/z;-><init>(Led/h;)V

    .line 197
    .line 198
    .line 199
    :goto_4
    move-object v1, v0

    .line 200
    goto :goto_6

    .line 201
    :cond_c
    :goto_5
    const/4 v1, 0x0

    .line 202
    :goto_6
    return-object v1
.end method

.method public final q(Ljava/lang/String;)Led/z;
    .locals 1

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Led/e;

    invoke-direct {v0}, Led/e;-><init>()V

    invoke-virtual {v0, p1}, Led/e;->i0(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lfd/l;->d(Led/e;Z)Led/z;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lfd/l;->b(Led/z;Led/z;Z)Led/z;

    move-result-object p1

    return-object p1
.end method

.method public final r()Ljava/nio/file/Path;
    .locals 2
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    invoke-virtual {p0}, Led/z;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/browser/trusted/c;->k(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    const-string v1, "get(toString())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final t()Ljava/lang/Character;
    .locals 4

    .line 1
    sget-object v0, Lfd/l;->a:Led/h;

    .line 2
    .line 3
    iget-object v1, p0, Led/z;->a:Led/h;

    .line 4
    .line 5
    invoke-static {v1, v0}, Led/h;->v(Led/h;Led/h;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, -0x1

    .line 10
    if-eq v0, v2, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {v1}, Led/h;->r()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x2

    .line 18
    if-ge v0, v2, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    const/4 v0, 0x1

    .line 22
    invoke-virtual {v1, v0}, Led/h;->x(I)B

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0x3a

    .line 27
    .line 28
    int-to-byte v3, v3

    .line 29
    if-eq v2, v3, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v1, v2}, Led/h;->x(I)B

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    int-to-char v1, v1

    .line 38
    const/16 v3, 0x61

    .line 39
    .line 40
    if-gt v3, v1, :cond_3

    .line 41
    .line 42
    const/16 v3, 0x7a

    .line 43
    .line 44
    if-gt v1, v3, :cond_3

    .line 45
    .line 46
    const/4 v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/4 v3, 0x0

    .line 49
    :goto_0
    if-nez v3, :cond_5

    .line 50
    .line 51
    const/16 v3, 0x41

    .line 52
    .line 53
    if-gt v3, v1, :cond_4

    .line 54
    .line 55
    const/16 v3, 0x5a

    .line 56
    .line 57
    if-gt v1, v3, :cond_4

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_4
    const/4 v0, 0x0

    .line 61
    :goto_1
    if-nez v0, :cond_5

    .line 62
    .line 63
    :goto_2
    const/4 v0, 0x0

    .line 64
    goto :goto_3

    .line 65
    :cond_5
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :goto_3
    return-object v0
.end method

.method public final toFile()Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Led/z;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Led/z;->a:Led/h;

    invoke-virtual {v0}, Led/h;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lrc/u;
.super Lrc/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc/u$b;,
        Lrc/u$a;
    }
.end annotation


# static fields
.field public static final f:Lrc/t;

.field public static final g:Lrc/t;

.field public static final h:[B

.field public static final i:[B

.field public static final j:[B


# instance fields
.field public final b:Lrc/t;

.field public c:J

.field public final d:Led/h;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrc/u$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lrc/t;->f:Lrc/t$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    move-result-object v0

    sput-object v0, Lrc/u;->f:Lrc/t;

    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    const-string v0, "multipart/digest"

    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    move-result-object v0

    sput-object v0, Lrc/u;->g:Lrc/t;

    const/4 v0, 0x2

    new-array v1, v0, [B

    const/16 v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x20

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    sput-object v1, Lrc/u;->h:[B

    new-array v1, v0, [B

    const/16 v2, 0xd

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0xa

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    sput-object v1, Lrc/u;->i:[B

    new-array v0, v0, [B

    const/16 v1, 0x2d

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aput-byte v1, v0, v4

    sput-object v0, Lrc/u;->j:[B

    return-void
.end method

.method public constructor <init>(Led/h;Lrc/t;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Led/h;",
            "Lrc/t;",
            "Ljava/util/List<",
            "Lrc/u$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "boundaryByteString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lrc/a0;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lrc/u;->d:Led/h;

    .line 15
    .line 16
    iput-object p3, p0, Lrc/u;->e:Ljava/util/List;

    .line 17
    .line 18
    sget-object p3, Lrc/t;->f:Lrc/t$a;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p2, "; boundary="

    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Led/h;->G()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lrc/t$a;->a(Ljava/lang/String;)Lrc/t;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Lrc/u;->b:Lrc/t;

    .line 52
    .line 53
    const-wide/16 p1, -0x1

    .line 54
    .line 55
    iput-wide p1, p0, Lrc/u;->c:J

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lrc/u;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lrc/u;->d(Led/f;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lrc/u;->c:J

    :cond_0
    return-wide v0
.end method

.method public final b()Lrc/t;
    .locals 1

    iget-object v0, p0, Lrc/u;->b:Lrc/t;

    return-object v0
.end method

.method public final c(Led/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lrc/u;->d(Led/f;Z)J

    return-void
.end method

.method public final d(Led/f;Z)J
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    new-instance v1, Led/e;

    .line 6
    .line 7
    invoke-direct {v1}, Led/e;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object v2, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    move-object v2, v1

    .line 14
    move-object/from16 v1, p1

    .line 15
    .line 16
    :goto_0
    iget-object v3, v0, Lrc/u;->e:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    const/4 v5, 0x0

    .line 23
    const-wide/16 v6, 0x0

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    :goto_1
    iget-object v9, v0, Lrc/u;->d:Led/h;

    .line 27
    .line 28
    sget-object v10, Lrc/u;->j:[B

    .line 29
    .line 30
    sget-object v11, Lrc/u;->i:[B

    .line 31
    .line 32
    if-ge v8, v4, :cond_6

    .line 33
    .line 34
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Lrc/u$b;

    .line 39
    .line 40
    iget-object v13, v12, Lrc/u$b;->a:Lrc/q;

    .line 41
    .line 42
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v1, v10}, Led/f;->write([B)Led/f;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1, v9}, Led/f;->C(Led/h;)Led/f;

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v11}, Led/f;->write([B)Led/f;

    .line 52
    .line 53
    .line 54
    if-eqz v13, :cond_1

    .line 55
    .line 56
    iget-object v9, v13, Lrc/q;->a:[Ljava/lang/String;

    .line 57
    .line 58
    array-length v9, v9

    .line 59
    div-int/lit8 v9, v9, 0x2

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    :goto_2
    if-ge v10, v9, :cond_1

    .line 63
    .line 64
    invoke-virtual {v13, v10}, Lrc/q;->o(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    invoke-interface {v1, v14}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 69
    .line 70
    .line 71
    move-result-object v14

    .line 72
    sget-object v15, Lrc/u;->h:[B

    .line 73
    .line 74
    invoke-interface {v14, v15}, Led/f;->write([B)Led/f;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    invoke-virtual {v13, v10}, Lrc/q;->w(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v15

    .line 82
    invoke-interface {v14, v15}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    invoke-interface {v14, v11}, Led/f;->write([B)Led/f;

    .line 87
    .line 88
    .line 89
    add-int/lit8 v10, v10, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_1
    iget-object v9, v12, Lrc/u$b;->b:Lrc/a0;

    .line 93
    .line 94
    invoke-virtual {v9}, Lrc/a0;->b()Lrc/t;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    if-eqz v10, :cond_2

    .line 99
    .line 100
    const-string v12, "Content-Type: "

    .line 101
    .line 102
    invoke-interface {v1, v12}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 103
    .line 104
    .line 105
    move-result-object v12

    .line 106
    iget-object v10, v10, Lrc/t;->a:Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v12, v10}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    invoke-interface {v10, v11}, Led/f;->write([B)Led/f;

    .line 113
    .line 114
    .line 115
    :cond_2
    invoke-virtual {v9}, Lrc/a0;->a()J

    .line 116
    .line 117
    .line 118
    move-result-wide v12

    .line 119
    const-wide/16 v14, -0x1

    .line 120
    .line 121
    cmp-long v10, v12, v14

    .line 122
    .line 123
    if-eqz v10, :cond_3

    .line 124
    .line 125
    const-string v10, "Content-Length: "

    .line 126
    .line 127
    invoke-interface {v1, v10}, Led/f;->S(Ljava/lang/String;)Led/f;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-interface {v10, v12, v13}, Led/f;->m0(J)Led/f;

    .line 132
    .line 133
    .line 134
    move-result-object v10

    .line 135
    invoke-interface {v10, v11}, Led/f;->write([B)Led/f;

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    if-eqz p2, :cond_4

    .line 140
    .line 141
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2}, Led/e;->b()V

    .line 145
    .line 146
    .line 147
    return-wide v14

    .line 148
    :cond_4
    :goto_3
    invoke-interface {v1, v11}, Led/f;->write([B)Led/f;

    .line 149
    .line 150
    .line 151
    if-eqz p2, :cond_5

    .line 152
    .line 153
    add-long/2addr v6, v12

    .line 154
    goto :goto_4

    .line 155
    :cond_5
    invoke-virtual {v9, v1}, Lrc/a0;->c(Led/f;)V

    .line 156
    .line 157
    .line 158
    :goto_4
    invoke-interface {v1, v11}, Led/f;->write([B)Led/f;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v8, v8, 0x1

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-interface {v1, v10}, Led/f;->write([B)Led/f;

    .line 169
    .line 170
    .line 171
    invoke-interface {v1, v9}, Led/f;->C(Led/h;)Led/f;

    .line 172
    .line 173
    .line 174
    invoke-interface {v1, v10}, Led/f;->write([B)Led/f;

    .line 175
    .line 176
    .line 177
    invoke-interface {v1, v11}, Led/f;->write([B)Led/f;

    .line 178
    .line 179
    .line 180
    if-eqz p2, :cond_7

    .line 181
    .line 182
    invoke-static {v2}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget-wide v3, v2, Led/e;->b:J

    .line 186
    .line 187
    add-long/2addr v6, v3

    .line 188
    invoke-virtual {v2}, Led/e;->b()V

    .line 189
    .line 190
    .line 191
    :cond_7
    return-wide v6
.end method

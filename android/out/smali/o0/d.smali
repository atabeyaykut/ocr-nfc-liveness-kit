.class public final Lo0/d;
.super Lo0/c;
.source "SourceFile"


# static fields
.field public static final m:Led/h;

.field public static final n:Led/h;

.field public static final p:Led/h;


# instance fields
.field public final f:Led/g;

.field public final g:Led/e;

.field public h:I

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    const-string v0, "\'\\"

    .line 4
    .line 5
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lo0/d;->m:Led/h;

    .line 10
    .line 11
    const-string v0, "\"\\"

    .line 12
    .line 13
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lo0/d;->n:Led/h;

    .line 18
    .line 19
    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 20
    .line 21
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lo0/d;->p:Led/h;

    .line 26
    .line 27
    const-string v0, "\n\r"

    .line 28
    .line 29
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 30
    .line 31
    .line 32
    const-string v0, "*/"

    .line 33
    .line 34
    invoke-static {v0}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(Led/d0;)V
    .locals 1

    invoke-direct {p0}, Lo0/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lo0/d;->h:I

    iput-object p1, p0, Lo0/d;->f:Led/g;

    iget-object p1, p1, Led/d0;->b:Led/e;

    iput-object p1, p0, Lo0/d;->g:Led/e;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lo0/c;->m(I)V

    return-void
.end method


# virtual methods
.method public final B(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    iget-object v4, p0, Lo0/d;->f:Led/g;

    invoke-interface {v4, v2, v3}, Led/g;->Y(J)Z

    move-result v2

    if-eqz v2, :cond_5

    int-to-long v2, v0

    iget-object v0, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v0, v2, v3}, Led/e;->f(J)B

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_4

    const/16 v3, 0x20

    if-eq v2, v3, :cond_4

    const/16 v3, 0xd

    if-eq v2, v3, :cond_4

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    int-to-long v5, v1

    invoke-virtual {v0, v5, v6}, Led/e;->skip(J)V

    const/16 p1, 0x2f

    const/4 v0, 0x0

    if-ne v2, p1, :cond_2

    const-wide/16 v5, 0x2

    invoke-interface {v4, v5, v6}, Led/g;->Y(J)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lo0/d;->r()V

    throw v0

    :cond_2
    const/16 p1, 0x23

    if-eq v2, p1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lo0/d;->r()V

    throw v0

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    const/4 p1, -0x1

    return p1

    :cond_6
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final E(Led/h;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lo0/d;->f:Led/g;

    invoke-interface {v2, p1}, Led/g;->H(Led/h;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    iget-object v4, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v4, v2, v3}, Led/e;->f(J)B

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    invoke-virtual {v4, v2, v3}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Led/e;->readByte()B

    invoke-virtual {p0}, Lo0/d;->J()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v2, v3}, Led/e;->s(J)Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_2

    invoke-virtual {v4}, Led/e;->readByte()B

    return-object p1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Led/e;->readByte()B

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lo0/c;->q(Ljava/lang/String;)V

    throw v0
.end method

.method public final F()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lo0/d;->p:Led/h;

    iget-object v1, p0, Lo0/d;->f:Led/g;

    invoke-interface {v1, v0}, Led/g;->H(Led/h;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lo0/d;->g:Led/e;

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    invoke-virtual {v4, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Led/e;->r()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final J()C
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lo0/d;->f:Led/g;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Led/g;->Y(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v1}, Led/e;->readByte()B

    move-result v3

    const/16 v4, 0xa

    if-eq v3, v4, :cond_b

    const/16 v5, 0x22

    if-eq v3, v5, :cond_b

    const/16 v5, 0x27

    if-eq v3, v5, :cond_b

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_b

    const/16 v5, 0x5c

    if-eq v3, v5, :cond_b

    const/16 v5, 0x62

    if-eq v3, v5, :cond_a

    const/16 v5, 0x66

    if-eq v3, v5, :cond_9

    const/16 v6, 0x6e

    if-eq v3, v6, :cond_8

    const/16 v6, 0x72

    if-eq v3, v6, :cond_7

    const/16 v6, 0x74

    if-eq v3, v6, :cond_6

    const/16 v6, 0x75

    if-ne v3, v6, :cond_5

    const-wide/16 v6, 0x4

    invoke-interface {v0, v6, v7}, Led/g;->Y(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v8, 0x4

    if-ge v0, v8, :cond_3

    int-to-long v8, v0

    invoke-virtual {v1, v8, v9}, Led/e;->f(J)B

    move-result v8

    shl-int/lit8 v3, v3, 0x4

    int-to-char v3, v3

    const/16 v9, 0x30

    if-lt v8, v9, :cond_0

    const/16 v9, 0x39

    if-gt v8, v9, :cond_0

    add-int/lit8 v8, v8, -0x30

    goto :goto_2

    :cond_0
    const/16 v9, 0x61

    if-lt v8, v9, :cond_1

    if-gt v8, v5, :cond_1

    add-int/lit8 v8, v8, -0x61

    goto :goto_1

    :cond_1
    const/16 v9, 0x41

    if-lt v8, v9, :cond_2

    const/16 v9, 0x46

    if-gt v8, v9, :cond_2

    add-int/lit8 v8, v8, -0x41

    :goto_1
    add-int/2addr v8, v4

    :goto_2
    add-int/2addr v8, v3

    int-to-char v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v6, v7}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo0/c;->q(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v1, v6, v7}, Led/e;->skip(J)V

    return v3

    :cond_4
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid escape sequence: \\"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo0/c;->q(Ljava/lang/String;)V

    throw v2

    :cond_6
    const/16 v0, 0x9

    return v0

    :cond_7
    const/16 v0, 0xd

    return v0

    :cond_8
    return v4

    :cond_9
    const/16 v0, 0xc

    return v0

    :cond_a
    const/16 v0, 0x8

    return v0

    :cond_b
    int-to-char v0, v3

    return v0

    :cond_c
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, Lo0/c;->q(Ljava/lang/String;)V

    throw v2
.end method

.method public final O(Led/h;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lo0/d;->f:Led/g;

    invoke-interface {v0, p1}, Led/g;->H(Led/h;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v2, v0, v1}, Led/e;->f(J)B

    move-result v3

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Led/e;->skip(J)V

    const/16 v0, 0x5c

    if-ne v3, v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->J()C

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const-string p1, "Unterminated string"

    invoke-virtual {p0, p1}, Lo0/c;->q(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo0/c;->m(I)V

    iget-object v1, p0, Lo0/c;->d:[I

    iget v2, p0, Lo0/c;->a:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    iput v0, p0, Lo0/d;->h:I

    return-void

    :cond_1
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lo0/c;->m(I)V

    const/4 v0, 0x0

    iput v0, p0, Lo0/d;->h:I

    return-void

    :cond_1
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo0/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo0/c;->a:I

    iget-object v1, p0, Lo0/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lo0/d;->h:I

    return-void

    :cond_1
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lo0/d;->h:I

    iget-object v1, p0, Lo0/c;->b:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    iput v0, p0, Lo0/c;->a:I

    iget-object v0, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v0}, Led/e;->b()V

    iget-object v0, p0, Lo0/d;->f:Led/g;

    invoke-interface {v0}, Led/j0;->close()V

    return-void
.end method

.method public final d()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lo0/c;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo0/c;->a:I

    iget-object v1, p0, Lo0/c;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iget-object v1, p0, Lo0/c;->d:[I

    add-int/lit8 v0, v0, -0x1

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    const/4 v0, 0x0

    iput v0, p0, Lo0/d;->h:I

    return-void

    :cond_1
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iput v2, p0, Lo0/d;->h:I

    iget-object v0, p0, Lo0/c;->d:[I

    iget v1, p0, Lo0/c;->a:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iput v2, p0, Lo0/d;->h:I

    iget-object v0, p0, Lo0/c;->d:[I

    iget v1, p0, Lo0/c;->a:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    :cond_2
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lo0/d;->h:I

    iget-object v0, p0, Lo0/c;->d:[I

    iget v1, p0, Lo0/c;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    iget-wide v0, p0, Lo0/d;->j:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    iget v0, p0, Lo0/d;->k:I

    int-to-long v0, v0

    iget-object v6, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v6, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    sget-object v0, Lo0/d;->n:Led/h;

    :goto_1
    invoke-virtual {p0, v0}, Lo0/d;->E(Led/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    sget-object v0, Lo0/d;->m:Led/h;

    goto :goto_1

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lo0/d;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_7

    :goto_2
    iput v4, p0, Lo0/d;->h:I

    :try_start_0
    iget-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x0

    iput-object v3, p0, Lo0/d;->l:Ljava/lang/String;

    iput v2, p0, Lo0/d;->h:I

    iget-object v2, p0, Lo0/c;->d:[I

    iget v3, p0, Lo0/c;->a:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    :cond_6
    new-instance v2, Lo0/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lo0/b;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo0/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lo0/d;->j:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    iput v2, p0, Lo0/d;->h:I

    iget-object v0, p0, Lo0/c;->d:[I

    iget v1, p0, Lo0/c;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    :cond_1
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lo0/d;->j:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    iget v0, p0, Lo0/d;->k:I

    int-to-long v0, v0

    iget-object v6, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v6, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    sget-object v0, Lo0/d;->n:Led/h;

    goto :goto_1

    :cond_7
    sget-object v0, Lo0/d;->m:Led/h;

    :goto_1
    invoke-virtual {p0, v0}, Lo0/d;->E(Led/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v2, p0, Lo0/d;->h:I

    iget-object v1, p0, Lo0/c;->d:[I

    iget v6, p0, Lo0/c;->a:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :goto_2
    iput v5, p0, Lo0/d;->h:I

    :try_start_1
    iget-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    iput v2, p0, Lo0/d;->h:I

    iget-object v0, p0, Lo0/c;->d:[I

    iget v1, p0, Lo0/c;->a:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    :cond_8
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo0/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo0/d;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo0/d;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    sget-object v0, Lo0/d;->n:Led/h;

    :goto_0
    invoke-virtual {p0, v0}, Lo0/d;->E(Led/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    sget-object v0, Lo0/d;->m:Led/h;

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lo0/d;->l:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    iget-wide v0, p0, Lo0/d;->j:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    iget v0, p0, Lo0/d;->k:I

    int-to-long v0, v0

    iget-object v2, p0, Lo0/d;->g:Led/e;

    invoke-virtual {v2, v0, v1}, Led/e;->s(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lo0/d;->h:I

    iget-object v1, p0, Lo0/c;->d:[I

    iget v2, p0, Lo0/c;->a:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    :cond_6
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    const/16 v0, 0xa

    return v0

    :pswitch_1
    const/4 v0, 0x7

    return v0

    :pswitch_2
    const/4 v0, 0x5

    return v0

    :pswitch_3
    const/4 v0, 0x6

    return v0

    :pswitch_4
    const/16 v0, 0x9

    return v0

    :pswitch_5
    const/16 v0, 0x8

    return v0

    :pswitch_6
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x1

    return v0

    :pswitch_8
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x3

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Lo0/c$a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lo0/d;->t(Ljava/lang/String;Lo0/c$a;)I

    move-result p1

    return p1

    :cond_2
    iget-object v0, p1, Lo0/c$a;->b:Led/x;

    iget-object v3, p0, Lo0/d;->f:Led/g;

    invoke-interface {v3, v0}, Led/g;->h0(Led/x;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    iput v1, p0, Lo0/d;->h:I

    iget-object v1, p0, Lo0/c;->c:[Ljava/lang/String;

    iget v2, p0, Lo0/c;->a:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Lo0/c$a;->a:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    :cond_3
    iget-object v0, p0, Lo0/c;->c:[Ljava/lang/String;

    iget v3, p0, Lo0/c;->a:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-virtual {p0}, Lo0/d;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lo0/d;->t(Ljava/lang/String;Lo0/c$a;)I

    move-result p1

    if-ne p1, v2, :cond_4

    iput v1, p0, Lo0/d;->h:I

    iput-object v3, p0, Lo0/d;->l:Ljava/lang/String;

    iget-object v1, p0, Lo0/c;->c:[Ljava/lang/String;

    iget v2, p0, Lo0/c;->a:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final o()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lo0/d;->h:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lo0/d;->s()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    :cond_0
    const/16 v1, 0xe

    .line 10
    .line 11
    if-ne v0, v1, :cond_2

    .line 12
    .line 13
    sget-object v0, Lo0/d;->p:Led/h;

    .line 14
    .line 15
    iget-object v1, p0, Lo0/d;->f:Led/g;

    .line 16
    .line 17
    invoke-interface {v1, v0}, Led/g;->H(Led/h;)J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    const-wide/16 v2, -0x1

    .line 22
    .line 23
    iget-object v4, p0, Lo0/d;->g:Led/e;

    .line 24
    .line 25
    cmp-long v5, v0, v2

    .line 26
    .line 27
    if-eqz v5, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-wide v0, v4, Led/e;->b:J

    .line 31
    .line 32
    :goto_0
    invoke-virtual {v4, v0, v1}, Led/e;->skip(J)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_2
    const/16 v1, 0xd

    .line 37
    .line 38
    if-ne v0, v1, :cond_3

    .line 39
    .line 40
    sget-object v0, Lo0/d;->n:Led/h;

    .line 41
    .line 42
    :goto_1
    invoke-virtual {p0, v0}, Lo0/d;->O(Led/h;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/16 v1, 0xc

    .line 47
    .line 48
    if-ne v0, v1, :cond_4

    .line 49
    .line 50
    sget-object v0, Lo0/d;->m:Led/h;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_4
    const/16 v1, 0xf

    .line 54
    .line 55
    if-ne v0, v1, :cond_5

    .line 56
    .line 57
    :goto_2
    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lo0/d;->h:I

    .line 59
    .line 60
    iget-object v0, p0, Lo0/c;->c:[Ljava/lang/String;

    .line 61
    .line 62
    iget v1, p0, Lo0/c;->a:I

    .line 63
    .line 64
    add-int/lit8 v1, v1, -0x1

    .line 65
    .line 66
    const-string v2, "null"

    .line 67
    .line 68
    aput-object v2, v0, v1

    .line 69
    .line 70
    return-void

    .line 71
    :cond_5
    new-instance v0, Lo0/a;

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v2, "Expected a name but was "

    .line 76
    .line 77
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lo0/d;->k()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, " at path "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method public final p()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :cond_0
    iget v2, p0, Lo0/d;->h:I

    .line 4
    .line 5
    if-nez v2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lo0/d;->s()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :cond_1
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x3

    .line 13
    if-ne v2, v4, :cond_2

    .line 14
    .line 15
    invoke-virtual {p0, v3}, Lo0/c;->m(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto/16 :goto_7

    .line 21
    .line 22
    :cond_2
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    invoke-virtual {p0, v4}, Lo0/c;->m(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_3
    const/4 v4, 0x4

    .line 29
    const-string v5, " at path "

    .line 30
    .line 31
    const-string v6, "Expected a value but was "

    .line 32
    .line 33
    if-ne v2, v4, :cond_5

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    if-ltz v1, :cond_4

    .line 38
    .line 39
    :goto_1
    iget v2, p0, Lo0/c;->a:I

    .line 40
    .line 41
    sub-int/2addr v2, v3

    .line 42
    iput v2, p0, Lo0/c;->a:I

    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :cond_4
    new-instance v0, Lo0/a;

    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lo0/d;->k()I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw v0

    .line 82
    :cond_5
    const/4 v4, 0x2

    .line 83
    if-ne v2, v4, :cond_7

    .line 84
    .line 85
    add-int/lit8 v1, v1, -0x1

    .line 86
    .line 87
    if-ltz v1, :cond_6

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_6
    new-instance v0, Lo0/a;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0}, Lo0/d;->k()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    throw v0

    .line 126
    :cond_7
    const/16 v4, 0xe

    .line 127
    .line 128
    iget-object v7, p0, Lo0/d;->g:Led/e;

    .line 129
    .line 130
    if-eq v2, v4, :cond_f

    .line 131
    .line 132
    const/16 v4, 0xa

    .line 133
    .line 134
    if-ne v2, v4, :cond_8

    .line 135
    .line 136
    goto :goto_5

    .line 137
    :cond_8
    const/16 v4, 0x9

    .line 138
    .line 139
    if-eq v2, v4, :cond_e

    .line 140
    .line 141
    const/16 v4, 0xd

    .line 142
    .line 143
    if-ne v2, v4, :cond_9

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    const/16 v4, 0x8

    .line 147
    .line 148
    if-eq v2, v4, :cond_d

    .line 149
    .line 150
    const/16 v4, 0xc

    .line 151
    .line 152
    if-ne v2, v4, :cond_a

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_a
    const/16 v4, 0x11

    .line 156
    .line 157
    if-ne v2, v4, :cond_b

    .line 158
    .line 159
    iget v2, p0, Lo0/d;->k:I

    .line 160
    .line 161
    int-to-long v4, v2

    .line 162
    invoke-virtual {v7, v4, v5}, Led/e;->skip(J)V

    .line 163
    .line 164
    .line 165
    goto :goto_7

    .line 166
    :cond_b
    const/16 v4, 0x12

    .line 167
    .line 168
    if-eq v2, v4, :cond_c

    .line 169
    .line 170
    goto :goto_7

    .line 171
    :cond_c
    new-instance v0, Lo0/a;

    .line 172
    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lo0/d;->k()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw v0

    .line 207
    :cond_d
    :goto_2
    sget-object v2, Lo0/d;->m:Led/h;

    .line 208
    .line 209
    goto :goto_4

    .line 210
    :cond_e
    :goto_3
    sget-object v2, Lo0/d;->n:Led/h;

    .line 211
    .line 212
    :goto_4
    invoke-virtual {p0, v2}, Lo0/d;->O(Led/h;)V

    .line 213
    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_f
    :goto_5
    sget-object v2, Lo0/d;->p:Led/h;

    .line 217
    .line 218
    iget-object v4, p0, Lo0/d;->f:Led/g;

    .line 219
    .line 220
    invoke-interface {v4, v2}, Led/g;->H(Led/h;)J

    .line 221
    .line 222
    .line 223
    move-result-wide v4

    .line 224
    const-wide/16 v8, -0x1

    .line 225
    .line 226
    cmp-long v2, v4, v8

    .line 227
    .line 228
    if-eqz v2, :cond_10

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_10
    iget-wide v4, v7, Led/e;->b:J

    .line 232
    .line 233
    :goto_6
    invoke-virtual {v7, v4, v5}, Led/e;->skip(J)V

    .line 234
    .line 235
    .line 236
    :goto_7
    iput v0, p0, Lo0/d;->h:I

    .line 237
    .line 238
    if-nez v1, :cond_0

    .line 239
    .line 240
    iget-object v0, p0, Lo0/c;->d:[I

    .line 241
    .line 242
    iget v1, p0, Lo0/c;->a:I

    .line 243
    .line 244
    add-int/lit8 v2, v1, -0x1

    .line 245
    .line 246
    aget v4, v0, v2

    .line 247
    .line 248
    add-int/2addr v4, v3

    .line 249
    aput v4, v0, v2

    .line 250
    .line 251
    iget-object v0, p0, Lo0/c;->c:[Ljava/lang/String;

    .line 252
    .line 253
    sub-int/2addr v1, v3

    .line 254
    const-string v2, "null"

    .line 255
    .line 256
    aput-object v2, v0, v1

    .line 257
    .line 258
    return-void
.end method

.method public final r()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-virtual {p0, v0}, Lo0/c;->q(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final s()I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lo0/c;->b:[I

    .line 4
    .line 5
    iget v2, v0, Lo0/c;->a:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, -0x1

    .line 8
    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/16 v7, 0x5d

    .line 13
    .line 14
    const/16 v8, 0x3b

    .line 15
    .line 16
    const/16 v9, 0x2c

    .line 17
    .line 18
    const/4 v10, 0x6

    .line 19
    const/4 v11, 0x3

    .line 20
    const/4 v12, 0x7

    .line 21
    const/4 v14, 0x5

    .line 22
    const/4 v15, 0x4

    .line 23
    const/4 v4, 0x2

    .line 24
    iget-object v5, v0, Lo0/d;->g:Led/e;

    .line 25
    .line 26
    const/4 v13, 0x1

    .line 27
    if-ne v3, v13, :cond_1

    .line 28
    .line 29
    sub-int/2addr v2, v13

    .line 30
    aput v4, v1, v2

    .line 31
    .line 32
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-ne v3, v4, :cond_4

    .line 35
    .line 36
    invoke-virtual {v0, v13}, Lo0/d;->B(Z)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 41
    .line 42
    .line 43
    if-eq v1, v9, :cond_0

    .line 44
    .line 45
    if-eq v1, v8, :cond_3

    .line 46
    .line 47
    if-ne v1, v7, :cond_2

    .line 48
    .line 49
    iput v15, v0, Lo0/d;->h:I

    .line 50
    .line 51
    return v15

    .line 52
    :cond_2
    const-string v1, "Unterminated array"

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lo0/c;->q(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v6

    .line 58
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 59
    .line 60
    .line 61
    throw v6

    .line 62
    :cond_4
    if-eq v3, v11, :cond_39

    .line 63
    .line 64
    if-ne v3, v14, :cond_5

    .line 65
    .line 66
    goto/16 :goto_17

    .line 67
    .line 68
    :cond_5
    if-ne v3, v15, :cond_7

    .line 69
    .line 70
    sub-int/2addr v2, v13

    .line 71
    aput v14, v1, v2

    .line 72
    .line 73
    invoke-virtual {v0, v13}, Lo0/d;->B(Z)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 78
    .line 79
    .line 80
    const/16 v2, 0x3a

    .line 81
    .line 82
    if-eq v1, v2, :cond_0

    .line 83
    .line 84
    const/16 v2, 0x3d

    .line 85
    .line 86
    if-eq v1, v2, :cond_6

    .line 87
    .line 88
    const-string v1, "Expected \':\'"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lo0/c;->q(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v6

    .line 94
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 95
    .line 96
    .line 97
    throw v6

    .line 98
    :cond_7
    if-ne v3, v10, :cond_8

    .line 99
    .line 100
    sub-int/2addr v2, v13

    .line 101
    aput v12, v1, v2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_8
    const/4 v1, 0x0

    .line 105
    if-ne v3, v12, :cond_a

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lo0/d;->B(Z)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    const/4 v2, -0x1

    .line 112
    if-ne v1, v2, :cond_9

    .line 113
    .line 114
    const/16 v11, 0x12

    .line 115
    .line 116
    goto/16 :goto_18

    .line 117
    .line 118
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 119
    .line 120
    .line 121
    throw v6

    .line 122
    :cond_a
    const/16 v2, 0x8

    .line 123
    .line 124
    if-eq v3, v2, :cond_38

    .line 125
    .line 126
    :goto_1
    invoke-virtual {v0, v13}, Lo0/d;->B(Z)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    const/16 v1, 0x22

    .line 131
    .line 132
    if-eq v2, v1, :cond_37

    .line 133
    .line 134
    const/16 v1, 0x27

    .line 135
    .line 136
    if-eq v2, v1, :cond_36

    .line 137
    .line 138
    if-eq v2, v9, :cond_33

    .line 139
    .line 140
    if-eq v2, v8, :cond_33

    .line 141
    .line 142
    const/16 v1, 0x5b

    .line 143
    .line 144
    if-eq v2, v1, :cond_32

    .line 145
    .line 146
    if-eq v2, v7, :cond_31

    .line 147
    .line 148
    const/16 v1, 0x7b

    .line 149
    .line 150
    if-eq v2, v1, :cond_30

    .line 151
    .line 152
    const-wide/16 v1, 0x0

    .line 153
    .line 154
    invoke-virtual {v5, v1, v2}, Led/e;->f(J)B

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    const/16 v7, 0x74

    .line 159
    .line 160
    iget-object v8, v0, Lo0/d;->f:Led/g;

    .line 161
    .line 162
    if-eq v3, v7, :cond_f

    .line 163
    .line 164
    const/16 v7, 0x54

    .line 165
    .line 166
    if-ne v3, v7, :cond_b

    .line 167
    .line 168
    goto :goto_3

    .line 169
    :cond_b
    const/16 v7, 0x66

    .line 170
    .line 171
    if-eq v3, v7, :cond_e

    .line 172
    .line 173
    const/16 v7, 0x46

    .line 174
    .line 175
    if-ne v3, v7, :cond_c

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_c
    const/16 v7, 0x6e

    .line 179
    .line 180
    if-eq v3, v7, :cond_d

    .line 181
    .line 182
    const/16 v7, 0x4e

    .line 183
    .line 184
    if-ne v3, v7, :cond_13

    .line 185
    .line 186
    :cond_d
    const-string v3, "null"

    .line 187
    .line 188
    const-string v7, "NULL"

    .line 189
    .line 190
    const/4 v9, 0x7

    .line 191
    goto :goto_4

    .line 192
    :cond_e
    :goto_2
    const-string v3, "false"

    .line 193
    .line 194
    const-string v7, "FALSE"

    .line 195
    .line 196
    const/4 v9, 0x6

    .line 197
    goto :goto_4

    .line 198
    :cond_f
    :goto_3
    const-string v3, "true"

    .line 199
    .line 200
    const-string v7, "TRUE"

    .line 201
    .line 202
    const/4 v9, 0x5

    .line 203
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    const/4 v12, 0x1

    .line 208
    :goto_5
    if-ge v12, v6, :cond_12

    .line 209
    .line 210
    add-int/lit8 v15, v12, 0x1

    .line 211
    .line 212
    int-to-long v10, v15

    .line 213
    invoke-interface {v8, v10, v11}, Led/g;->Y(J)Z

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    if-nez v10, :cond_10

    .line 218
    .line 219
    goto :goto_6

    .line 220
    :cond_10
    int-to-long v10, v12

    .line 221
    invoke-virtual {v5, v10, v11}, Led/e;->f(J)B

    .line 222
    .line 223
    .line 224
    move-result v10

    .line 225
    invoke-virtual {v3, v12}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v11

    .line 229
    if-eq v10, v11, :cond_11

    .line 230
    .line 231
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    .line 232
    .line 233
    .line 234
    move-result v11

    .line 235
    if-eq v10, v11, :cond_11

    .line 236
    .line 237
    goto :goto_6

    .line 238
    :cond_11
    move v12, v15

    .line 239
    const/4 v10, 0x6

    .line 240
    const/4 v11, 0x3

    .line 241
    const/4 v15, 0x4

    .line 242
    goto :goto_5

    .line 243
    :cond_12
    add-int/lit8 v3, v6, 0x1

    .line 244
    .line 245
    int-to-long v10, v3

    .line 246
    invoke-interface {v8, v10, v11}, Led/g;->Y(J)Z

    .line 247
    .line 248
    .line 249
    move-result v3

    .line 250
    if-eqz v3, :cond_14

    .line 251
    .line 252
    int-to-long v10, v6

    .line 253
    invoke-virtual {v5, v10, v11}, Led/e;->f(J)B

    .line 254
    .line 255
    .line 256
    move-result v3

    .line 257
    invoke-virtual {v0, v3}, Lo0/d;->v(I)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-eqz v3, :cond_14

    .line 262
    .line 263
    :cond_13
    :goto_6
    const/4 v9, 0x0

    .line 264
    goto :goto_7

    .line 265
    :cond_14
    int-to-long v6, v6

    .line 266
    invoke-virtual {v5, v6, v7}, Led/e;->skip(J)V

    .line 267
    .line 268
    .line 269
    iput v9, v0, Lo0/d;->h:I

    .line 270
    .line 271
    :goto_7
    if-eqz v9, :cond_15

    .line 272
    .line 273
    return v9

    .line 274
    :cond_15
    move-wide v9, v1

    .line 275
    const/4 v3, 0x0

    .line 276
    const/4 v6, 0x0

    .line 277
    const/4 v7, 0x1

    .line 278
    const/4 v11, 0x0

    .line 279
    :goto_8
    add-int/lit8 v12, v3, 0x1

    .line 280
    .line 281
    int-to-long v14, v12

    .line 282
    invoke-interface {v8, v14, v15}, Led/g;->Y(J)Z

    .line 283
    .line 284
    .line 285
    move-result v14

    .line 286
    if-nez v14, :cond_16

    .line 287
    .line 288
    goto/16 :goto_f

    .line 289
    .line 290
    :cond_16
    int-to-long v14, v3

    .line 291
    invoke-virtual {v5, v14, v15}, Led/e;->f(J)B

    .line 292
    .line 293
    .line 294
    move-result v14

    .line 295
    const/16 v15, 0x2b

    .line 296
    .line 297
    if-eq v14, v15, :cond_2c

    .line 298
    .line 299
    const/16 v15, 0x45

    .line 300
    .line 301
    if-eq v14, v15, :cond_2a

    .line 302
    .line 303
    const/16 v15, 0x65

    .line 304
    .line 305
    if-eq v14, v15, :cond_2a

    .line 306
    .line 307
    const/16 v15, 0x2d

    .line 308
    .line 309
    if-eq v14, v15, :cond_28

    .line 310
    .line 311
    const/16 v15, 0x2e

    .line 312
    .line 313
    if-eq v14, v15, :cond_27

    .line 314
    .line 315
    const/16 v15, 0x30

    .line 316
    .line 317
    if-lt v14, v15, :cond_21

    .line 318
    .line 319
    const/16 v15, 0x39

    .line 320
    .line 321
    if-le v14, v15, :cond_17

    .line 322
    .line 323
    goto :goto_e

    .line 324
    :cond_17
    if-eq v6, v13, :cond_1f

    .line 325
    .line 326
    if-nez v6, :cond_18

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_18
    if-ne v6, v4, :cond_1c

    .line 330
    .line 331
    cmp-long v3, v9, v1

    .line 332
    .line 333
    if-nez v3, :cond_19

    .line 334
    .line 335
    goto/16 :goto_14

    .line 336
    .line 337
    :cond_19
    const-wide/16 v17, 0xa

    .line 338
    .line 339
    mul-long v17, v17, v9

    .line 340
    .line 341
    add-int/lit8 v14, v14, -0x30

    .line 342
    .line 343
    int-to-long v14, v14

    .line 344
    sub-long v17, v17, v14

    .line 345
    .line 346
    const-wide v14, -0xcccccccccccccccL

    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    cmp-long v3, v9, v14

    .line 352
    .line 353
    if-gtz v3, :cond_1b

    .line 354
    .line 355
    if-nez v3, :cond_1a

    .line 356
    .line 357
    cmp-long v3, v17, v9

    .line 358
    .line 359
    if-gez v3, :cond_1a

    .line 360
    .line 361
    goto :goto_9

    .line 362
    :cond_1a
    const/4 v3, 0x0

    .line 363
    goto :goto_a

    .line 364
    :cond_1b
    :goto_9
    const/4 v3, 0x1

    .line 365
    :goto_a
    and-int/2addr v3, v7

    .line 366
    move v7, v3

    .line 367
    move-wide/from16 v9, v17

    .line 368
    .line 369
    const/4 v15, 0x3

    .line 370
    goto :goto_d

    .line 371
    :cond_1c
    const/4 v15, 0x3

    .line 372
    if-ne v6, v15, :cond_1d

    .line 373
    .line 374
    const/4 v6, 0x4

    .line 375
    goto :goto_d

    .line 376
    :cond_1d
    const/4 v3, 0x5

    .line 377
    if-eq v6, v3, :cond_1e

    .line 378
    .line 379
    const/4 v3, 0x6

    .line 380
    if-ne v6, v3, :cond_20

    .line 381
    .line 382
    goto :goto_b

    .line 383
    :cond_1e
    const/4 v3, 0x6

    .line 384
    :goto_b
    const/4 v6, 0x7

    .line 385
    goto :goto_d

    .line 386
    :cond_1f
    :goto_c
    const/4 v3, 0x6

    .line 387
    const/4 v15, 0x3

    .line 388
    add-int/lit8 v14, v14, -0x30

    .line 389
    .line 390
    neg-int v6, v14

    .line 391
    int-to-long v9, v6

    .line 392
    const/4 v6, 0x2

    .line 393
    :cond_20
    :goto_d
    const/16 v16, 0x6

    .line 394
    .line 395
    goto/16 :goto_13

    .line 396
    .line 397
    :cond_21
    :goto_e
    invoke-virtual {v0, v14}, Lo0/d;->v(I)Z

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    if-nez v8, :cond_2d

    .line 402
    .line 403
    :goto_f
    if-ne v6, v4, :cond_25

    .line 404
    .line 405
    if-eqz v7, :cond_25

    .line 406
    .line 407
    const-wide/high16 v7, -0x8000000000000000L

    .line 408
    .line 409
    cmp-long v12, v9, v7

    .line 410
    .line 411
    if-nez v12, :cond_22

    .line 412
    .line 413
    if-eqz v11, :cond_25

    .line 414
    .line 415
    :cond_22
    cmp-long v7, v9, v1

    .line 416
    .line 417
    if-nez v7, :cond_23

    .line 418
    .line 419
    if-nez v11, :cond_25

    .line 420
    .line 421
    :cond_23
    if-eqz v11, :cond_24

    .line 422
    .line 423
    goto :goto_10

    .line 424
    :cond_24
    neg-long v9, v9

    .line 425
    :goto_10
    iput-wide v9, v0, Lo0/d;->j:J

    .line 426
    .line 427
    int-to-long v3, v3

    .line 428
    invoke-virtual {v5, v3, v4}, Led/e;->skip(J)V

    .line 429
    .line 430
    .line 431
    const/16 v3, 0x10

    .line 432
    .line 433
    const/16 v13, 0x10

    .line 434
    .line 435
    goto :goto_11

    .line 436
    :cond_25
    if-eq v6, v4, :cond_26

    .line 437
    .line 438
    const/4 v4, 0x4

    .line 439
    if-eq v6, v4, :cond_26

    .line 440
    .line 441
    const/4 v14, 0x7

    .line 442
    if-ne v6, v14, :cond_2d

    .line 443
    .line 444
    :cond_26
    iput v3, v0, Lo0/d;->k:I

    .line 445
    .line 446
    const/16 v3, 0x11

    .line 447
    .line 448
    const/16 v13, 0x11

    .line 449
    .line 450
    :goto_11
    iput v13, v0, Lo0/d;->h:I

    .line 451
    .line 452
    goto :goto_15

    .line 453
    :cond_27
    const/4 v14, 0x7

    .line 454
    const/4 v15, 0x3

    .line 455
    const/16 v16, 0x6

    .line 456
    .line 457
    if-ne v6, v4, :cond_2d

    .line 458
    .line 459
    const/4 v6, 0x3

    .line 460
    goto :goto_13

    .line 461
    :cond_28
    const/4 v14, 0x7

    .line 462
    const/4 v15, 0x3

    .line 463
    const/16 v16, 0x6

    .line 464
    .line 465
    if-nez v6, :cond_29

    .line 466
    .line 467
    const/4 v6, 0x1

    .line 468
    const/4 v11, 0x1

    .line 469
    goto :goto_13

    .line 470
    :cond_29
    const/4 v3, 0x5

    .line 471
    if-ne v6, v3, :cond_2d

    .line 472
    .line 473
    goto :goto_12

    .line 474
    :cond_2a
    const/4 v3, 0x5

    .line 475
    const/4 v14, 0x7

    .line 476
    const/4 v15, 0x3

    .line 477
    const/16 v16, 0x6

    .line 478
    .line 479
    if-eq v6, v4, :cond_2b

    .line 480
    .line 481
    const/4 v14, 0x4

    .line 482
    if-ne v6, v14, :cond_2d

    .line 483
    .line 484
    :cond_2b
    const/4 v6, 0x5

    .line 485
    goto :goto_13

    .line 486
    :cond_2c
    const/4 v3, 0x5

    .line 487
    const/4 v15, 0x3

    .line 488
    const/16 v16, 0x6

    .line 489
    .line 490
    if-ne v6, v3, :cond_2d

    .line 491
    .line 492
    :goto_12
    const/4 v6, 0x6

    .line 493
    :goto_13
    move v3, v12

    .line 494
    const/4 v14, 0x5

    .line 495
    goto/16 :goto_8

    .line 496
    .line 497
    :cond_2d
    :goto_14
    const/4 v13, 0x0

    .line 498
    :goto_15
    if-eqz v13, :cond_2e

    .line 499
    .line 500
    return v13

    .line 501
    :cond_2e
    invoke-virtual {v5, v1, v2}, Led/e;->f(J)B

    .line 502
    .line 503
    .line 504
    move-result v1

    .line 505
    invoke-virtual {v0, v1}, Lo0/d;->v(I)Z

    .line 506
    .line 507
    .line 508
    move-result v1

    .line 509
    if-nez v1, :cond_2f

    .line 510
    .line 511
    const-string v1, "Expected value"

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Lo0/c;->q(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    const/4 v1, 0x0

    .line 517
    throw v1

    .line 518
    :cond_2f
    const/4 v1, 0x0

    .line 519
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 520
    .line 521
    .line 522
    throw v1

    .line 523
    :cond_30
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 524
    .line 525
    .line 526
    iput v13, v0, Lo0/d;->h:I

    .line 527
    .line 528
    return v13

    .line 529
    :cond_31
    if-ne v3, v13, :cond_33

    .line 530
    .line 531
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 532
    .line 533
    .line 534
    const/4 v11, 0x4

    .line 535
    goto/16 :goto_18

    .line 536
    .line 537
    :cond_32
    const/4 v15, 0x3

    .line 538
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 539
    .line 540
    .line 541
    const/4 v11, 0x3

    .line 542
    goto/16 :goto_18

    .line 543
    .line 544
    :cond_33
    if-eq v3, v13, :cond_35

    .line 545
    .line 546
    if-ne v3, v4, :cond_34

    .line 547
    .line 548
    goto :goto_16

    .line 549
    :cond_34
    const-string v1, "Unexpected value"

    .line 550
    .line 551
    invoke-virtual {v0, v1}, Lo0/c;->q(Ljava/lang/String;)V

    .line 552
    .line 553
    .line 554
    const/4 v1, 0x0

    .line 555
    throw v1

    .line 556
    :cond_35
    :goto_16
    const/4 v1, 0x0

    .line 557
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 558
    .line 559
    .line 560
    throw v1

    .line 561
    :cond_36
    move-object v1, v6

    .line 562
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 563
    .line 564
    .line 565
    throw v1

    .line 566
    :cond_37
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 567
    .line 568
    .line 569
    const/16 v11, 0x9

    .line 570
    .line 571
    goto :goto_18

    .line 572
    :cond_38
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 573
    .line 574
    const-string v2, "JsonReader is closed"

    .line 575
    .line 576
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v1

    .line 580
    :cond_39
    :goto_17
    sub-int/2addr v2, v13

    .line 581
    const/4 v6, 0x4

    .line 582
    aput v6, v1, v2

    .line 583
    .line 584
    const/16 v1, 0x7d

    .line 585
    .line 586
    const/4 v2, 0x5

    .line 587
    if-ne v3, v2, :cond_3c

    .line 588
    .line 589
    invoke-virtual {v0, v13}, Lo0/d;->B(Z)I

    .line 590
    .line 591
    .line 592
    move-result v2

    .line 593
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 594
    .line 595
    .line 596
    if-eq v2, v9, :cond_3c

    .line 597
    .line 598
    if-eq v2, v8, :cond_3b

    .line 599
    .line 600
    if-ne v2, v1, :cond_3a

    .line 601
    .line 602
    iput v4, v0, Lo0/d;->h:I

    .line 603
    .line 604
    return v4

    .line 605
    :cond_3a
    const-string v1, "Unterminated object"

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Lo0/c;->q(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    const/4 v1, 0x0

    .line 611
    throw v1

    .line 612
    :cond_3b
    const/4 v1, 0x0

    .line 613
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 614
    .line 615
    .line 616
    throw v1

    .line 617
    :cond_3c
    invoke-virtual {v0, v13}, Lo0/d;->B(Z)I

    .line 618
    .line 619
    .line 620
    move-result v2

    .line 621
    const/16 v6, 0x22

    .line 622
    .line 623
    if-eq v2, v6, :cond_40

    .line 624
    .line 625
    const/16 v6, 0x27

    .line 626
    .line 627
    if-eq v2, v6, :cond_3f

    .line 628
    .line 629
    if-ne v2, v1, :cond_3e

    .line 630
    .line 631
    const/4 v1, 0x5

    .line 632
    if-eq v3, v1, :cond_3d

    .line 633
    .line 634
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 635
    .line 636
    .line 637
    iput v4, v0, Lo0/d;->h:I

    .line 638
    .line 639
    return v4

    .line 640
    :cond_3d
    const-string v1, "Expected name"

    .line 641
    .line 642
    invoke-virtual {v0, v1}, Lo0/c;->q(Ljava/lang/String;)V

    .line 643
    .line 644
    .line 645
    const/4 v1, 0x0

    .line 646
    throw v1

    .line 647
    :cond_3e
    const/4 v1, 0x0

    .line 648
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 649
    .line 650
    .line 651
    throw v1

    .line 652
    :cond_3f
    const/4 v1, 0x0

    .line 653
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 654
    .line 655
    .line 656
    invoke-virtual/range {p0 .. p0}, Lo0/d;->r()V

    .line 657
    .line 658
    .line 659
    throw v1

    .line 660
    :cond_40
    invoke-virtual {v5}, Led/e;->readByte()B

    .line 661
    .line 662
    .line 663
    const/16 v11, 0xd

    .line 664
    .line 665
    :goto_18
    iput v11, v0, Lo0/d;->h:I

    .line 666
    .line 667
    return v11
.end method

.method public final t(Ljava/lang/String;Lo0/c$a;)I
    .locals 4

    iget-object v0, p2, Lo0/c$a;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p2, Lo0/c$a;->a:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput v1, p0, Lo0/d;->h:I

    iget-object p2, p0, Lo0/c;->c:[Ljava/lang/String;

    iget v0, p0, Lo0/c;->a:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/d;->f:Led/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lo0/d;->r()V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final y()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lo0/d;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo0/d;->s()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lo0/d;->F()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    sget-object v0, Lo0/d;->n:Led/h;

    :goto_0
    invoke-virtual {p0, v0}, Lo0/d;->E(Led/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    sget-object v0, Lo0/d;->m:Led/h;

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lo0/d;->l:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lo0/d;->h:I

    iget-object v1, p0, Lo0/c;->c:[Ljava/lang/String;

    iget v2, p0, Lo0/c;->a:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    :cond_4
    new-instance v0, Lo0/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo0/d;->k()I

    move-result v2

    invoke-static {v2}, Landroidx/camera/core/impl/a;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lo0/c;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo0/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

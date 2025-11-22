.class public final Led/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/h0;


# instance fields
.field public final a:Ljava/io/OutputStream;

.field public final b:Led/k0;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Led/k0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Led/y;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Led/y;->b:Led/k0;

    return-void
.end method


# virtual methods
.method public final M(Led/e;J)V
    .locals 7

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p1, Led/e;->b:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-wide v5, p2

    .line 11
    invoke-static/range {v1 .. v6}, La6/a;->g(JJJ)V

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    cmp-long v2, p2, v0

    .line 17
    .line 18
    if-lez v2, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Led/y;->b:Led/k0;

    .line 21
    .line 22
    invoke-virtual {v0}, Led/k0;->f()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p1, Led/e;->a:Led/e0;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget v1, v0, Led/e0;->c:I

    .line 31
    .line 32
    iget v2, v0, Led/e0;->b:I

    .line 33
    .line 34
    sub-int/2addr v1, v2

    .line 35
    int-to-long v1, v1

    .line 36
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    long-to-int v2, v1

    .line 41
    iget-object v1, v0, Led/e0;->a:[B

    .line 42
    .line 43
    iget v3, v0, Led/e0;->b:I

    .line 44
    .line 45
    iget-object v4, p0, Led/y;->a:Ljava/io/OutputStream;

    .line 46
    .line 47
    invoke-virtual {v4, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 48
    .line 49
    .line 50
    iget v1, v0, Led/e0;->b:I

    .line 51
    .line 52
    add-int/2addr v1, v2

    .line 53
    iput v1, v0, Led/e0;->b:I

    .line 54
    .line 55
    int-to-long v2, v2

    .line 56
    sub-long/2addr p2, v2

    .line 57
    iget-wide v4, p1, Led/e;->b:J

    .line 58
    .line 59
    sub-long/2addr v4, v2

    .line 60
    iput-wide v4, p1, Led/e;->b:J

    .line 61
    .line 62
    iget v2, v0, Led/e0;->c:I

    .line 63
    .line 64
    if-ne v1, v2, :cond_0

    .line 65
    .line 66
    invoke-virtual {v0}, Led/e0;->a()Led/e0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iput-object v1, p1, Led/e;->a:Led/e0;

    .line 71
    .line 72
    invoke-static {v0}, Led/f0;->a(Led/e0;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Led/y;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Led/y;->a:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public final h()Led/k0;
    .locals 1

    iget-object v0, p0, Led/y;->b:Led/k0;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sink("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Led/y;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

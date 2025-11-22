.class public final Lwd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud/f<",
        "Lrc/d0;",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final b:Led/h;


# instance fields
.field public final a:Ll8/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll8/p<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    const-string v0, "EFBBBF"

    .line 4
    .line 5
    invoke-static {v0}, Led/h$a;->a(Ljava/lang/String;)Led/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lwd/c;->b:Led/h;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Ll8/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll8/p<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/c;->a:Ll8/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lrc/d0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lrc/d0;->c()Led/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    sget-object v1, Lwd/c;->b:Led/h;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Led/g;->G(Led/h;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v1, v1, Led/h;->a:[B

    .line 16
    .line 17
    array-length v1, v1

    .line 18
    int-to-long v1, v1

    .line 19
    invoke-interface {v0, v1, v2}, Led/g;->skip(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v1, Ll8/v;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ll8/v;-><init>(Led/g;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lwd/c;->a:Ll8/p;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ll8/p;->a(Ll8/u;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1}, Ll8/v;->k()Ll8/u$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    sget-object v2, Ll8/u$b;->k:Ll8/u$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    if-ne v1, v2, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lrc/d0;->close()V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :cond_1
    :try_start_1
    new-instance v0, Ll8/r;

    .line 46
    .line 47
    const-string v1, "JSON document was not fully consumed."

    .line 48
    .line 49
    invoke-direct {v0, v1}, Ll8/r;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    invoke-virtual {p1}, Lrc/d0;->close()V

    .line 55
    .line 56
    .line 57
    throw v0
.end method

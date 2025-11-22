.class public final Lh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/f$b;,
        Lh/f$a;
    }
.end annotation


# instance fields
.field public final a:Led/k;

.field public final b:Lh/b;


# direct methods
.method public constructor <init>(JLed/z;Led/t;Lkotlinx/coroutines/scheduling/b;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lh/f;->a:Led/k;

    new-instance v6, Lh/b;

    move-object v0, v6

    move-object v1, p4

    move-object v2, p3

    move-object v3, p5

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lh/b;-><init>(Led/t;Led/z;Lkotlinx/coroutines/scheduling/b;J)V

    iput-object v6, p0, Lh/f;->b:Lh/b;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lh/f$a;
    .locals 1

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    invoke-static {p1}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "SHA-256"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Led/h;->q(Ljava/lang/String;)Led/h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Led/h;->t()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lh/f;->b:Lh/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lh/b;->c(Ljava/lang/String;)Lh/b$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lh/f$a;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lh/f$a;-><init>(Lh/b$a;)V

    .line 30
    .line 31
    .line 32
    move-object p1, v0

    .line 33
    :goto_0
    return-object p1
.end method

.method public final get(Ljava/lang/String;)Lh/f$b;
    .locals 1

    .line 1
    sget-object v0, Led/h;->d:Led/h;

    .line 2
    .line 3
    invoke-static {p1}, Led/h$a;->b(Ljava/lang/String;)Led/h;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "SHA-256"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Led/h;->q(Ljava/lang/String;)Led/h;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Led/h;->t()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lh/f;->b:Lh/b;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lh/b;->d(Ljava/lang/String;)Lh/b$c;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lh/f$b;

    .line 28
    .line 29
    invoke-direct {v0, p1}, Lh/f$b;-><init>(Lh/b$c;)V

    .line 30
    .line 31
    .line 32
    move-object p1, v0

    .line 33
    :goto_0
    return-object p1
.end method

.method public final getFileSystem()Led/k;
    .locals 1

    iget-object v0, p0, Lh/f;->a:Led/k;

    return-object v0
.end method

.class public final Led/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Led/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final M(Led/e;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Led/e;->skip(J)V

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final h()Led/k0;
    .locals 1

    sget-object v0, Led/k0;->d:Led/k0$a;

    return-object v0
.end method

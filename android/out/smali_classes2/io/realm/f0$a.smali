.class public final Lio/realm/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/realm/w0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/realm/s0;",
        ">",
        "Ljava/lang/Object;",
        "Lio/realm/w0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lio/realm/n0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/n0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/realm/n0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/n0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lio/realm/f0$a;->a:Lio/realm/n0;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener should not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Lio/realm/s0;)V
    .locals 0

    iget-object p1, p0, Lio/realm/f0$a;->a:Lio/realm/n0;

    invoke-interface {p1}, Lio/realm/n0;->a()V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/realm/f0$a;

    if-eqz v0, :cond_0

    check-cast p1, Lio/realm/f0$a;

    iget-object p1, p1, Lio/realm/f0$a;->a:Lio/realm/n0;

    iget-object v0, p0, Lio/realm/f0$a;->a:Lio/realm/n0;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lio/realm/f0$a;->a:Lio/realm/n0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

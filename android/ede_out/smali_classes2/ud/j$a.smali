.class public final Lud/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lud/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lud/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lud/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lud/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lud/b<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/j$a;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lud/j$a;->b:Lud/b;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    iget-object v0, p0, Lud/j$a;->b:Lud/b;

    invoke-interface {v0}, Lud/b;->cancel()V

    return-void
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lud/j$a;->clone()Lud/b;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lud/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lud/b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lud/j$a;

    iget-object v1, p0, Lud/j$a;->b:Lud/b;

    invoke-interface {v1}, Lud/b;->clone()Lud/b;

    move-result-object v1

    iget-object v2, p0, Lud/j$a;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v2, v1}, Lud/j$a;-><init>(Ljava/util/concurrent/Executor;Lud/b;)V

    return-object v0
.end method

.method public final execute()Lud/c0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lud/c0<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lud/j$a;->b:Lud/b;

    invoke-interface {v0}, Lud/b;->execute()Lud/c0;

    move-result-object v0

    return-object v0
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lud/j$a;->b:Lud/b;

    invoke-interface {v0}, Lud/b;->m()Z

    move-result v0

    return v0
.end method

.method public final n0(Lud/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/d<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lud/j$a$a;

    invoke-direct {v0, p0, p1}, Lud/j$a$a;-><init>(Lud/j$a;Lud/d;)V

    iget-object p1, p0, Lud/j$a;->b:Lud/b;

    invoke-interface {p1, v0}, Lud/b;->n0(Lud/d;)V

    return-void
.end method

.method public final o()Lrc/x;
    .locals 1

    iget-object v0, p0, Lud/j$a;->b:Lud/b;

    invoke-interface {v0}, Lud/b;->o()Lrc/x;

    move-result-object v0

    return-object v0
.end method

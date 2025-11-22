.class public abstract Lud/l;
.super Lud/e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lud/l$a;,
        Lud/l$c;,
        Lud/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lud/e0<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Lud/b0;

.field public final b:Lrc/d$a;

.field public final c:Lud/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lud/f<",
            "Lrc/d0;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lud/b0;Lrc/d$a;Lud/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lud/b0;",
            "Lrc/d$a;",
            "Lud/f<",
            "Lrc/d0;",
            "TResponseT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lud/e0;-><init>()V

    iput-object p1, p0, Lud/l;->a:Lud/b0;

    iput-object p2, p0, Lud/l;->b:Lrc/d$a;

    iput-object p3, p0, Lud/l;->c:Lud/f;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    new-instance v0, Lud/u;

    iget-object v1, p0, Lud/l;->c:Lud/f;

    iget-object v2, p0, Lud/l;->a:Lud/b0;

    iget-object v3, p0, Lud/l;->b:Lrc/d$a;

    invoke-direct {v0, v2, p1, v3, v1}, Lud/u;-><init>(Lud/b0;[Ljava/lang/Object;Lrc/d$a;Lud/f;)V

    invoke-virtual {p0, v0, p1}, Lud/l;->c(Lud/u;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Lud/u;[Ljava/lang/Object;)Ljava/lang/Object;
.end method

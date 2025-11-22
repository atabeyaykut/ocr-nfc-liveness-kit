.class public abstract Lp9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp9/f$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lp9/f$b;",
        "E::TB;>",
        "Ljava/lang/Object;",
        "Lp9/f$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final a:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "Lp9/f$b;",
            "TE;>;"
        }
    .end annotation
.end field

.field public final b:Lp9/f$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp9/f$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp9/f$c;Lx9/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f$c<",
            "TB;>;",
            "Lx9/l<",
            "-",
            "Lp9/f$b;",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "baseKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lp9/b;->a:Lx9/l;

    instance-of p2, p1, Lp9/b;

    if-eqz p2, :cond_0

    check-cast p1, Lp9/b;

    iget-object p1, p1, Lp9/b;->b:Lp9/f$c;

    :cond_0
    iput-object p1, p0, Lp9/b;->b:Lp9/f$c;

    return-void
.end method

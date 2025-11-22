.class public final Lpc/a$c;
.super Lpc/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lpc/a$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final f:Lx9/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx9/l<",
            "TE;",
            "Ll9/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnc/j;Lx9/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lpc/a$b;-><init>(Lnc/j;)V

    iput-object p2, p0, Lpc/a$c;->f:Lx9/l;

    return-void
.end method


# virtual methods
.method public final J(Ljava/lang/Object;)Lx9/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lx9/l<",
            "Ljava/lang/Throwable;",
            "Ll9/m;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpc/a$b;->d:Lnc/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lp9/d;->getContext()Lp9/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lkotlinx/coroutines/internal/n;

    .line 8
    .line 9
    iget-object v2, p0, Lpc/a$c;->f:Lx9/l;

    .line 10
    .line 11
    invoke-direct {v1, v2, p1, v0}, Lkotlinx/coroutines/internal/n;-><init>(Lx9/l;Ljava/lang/Object;Lp9/f;)V

    .line 12
    .line 13
    .line 14
    return-object v1
.end method

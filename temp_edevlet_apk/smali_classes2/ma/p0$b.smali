.class public final Lma/p0$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lma/p0;-><init>(Lma/e;Lbc/l;Lx9/l;Ldc/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lma/p0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lma/p0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lma/p0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/p0<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lma/p0$b;->a:Lma/p0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lma/p0$b;->a:Lma/p0;

    .line 2
    .line 3
    iget-object v1, v0, Lma/p0;->b:Lx9/l;

    .line 4
    .line 5
    iget-object v0, v0, Lma/p0;->c:Ldc/f;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Lx9/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lvb/i;

    .line 12
    .line 13
    return-object v0
.end method

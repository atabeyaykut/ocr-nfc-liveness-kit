.class public final Lpc/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpc/a;->k()Lkotlinx/coroutines/selects/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/b<",
        "Lpc/j<",
        "+TE;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpc/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpc/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpc/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/a<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lpc/a$i;->a:Lpc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final z(Lkotlinx/coroutines/selects/c;Lx9/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/c<",
            "-TR;>;",
            "Lx9/p<",
            "-",
            "Lpc/j<",
            "+TE;>;-",
            "Lp9/d<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lpc/a$i;->a:Lpc/a;

    const/4 v1, 0x1

    invoke-static {v1, p2, v0, p1}, Lpc/a;->r(ILx9/p;Lpc/a;Lkotlinx/coroutines/selects/c;)V

    return-void
.end method

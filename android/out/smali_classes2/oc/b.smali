.class public final Loc/b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Ljava/lang/Throwable;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Loc/c;

.field public final synthetic b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Loc/c;Loc/a;)V
    .locals 0

    iput-object p1, p0, Loc/b;->a:Loc/c;

    iput-object p2, p0, Loc/b;->b:Ljava/lang/Runnable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Loc/b;->a:Loc/c;

    .line 4
    .line 5
    iget-object p1, p1, Loc/c;->a:Landroid/os/Handler;

    .line 6
    .line 7
    iget-object v0, p0, Loc/b;->b:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 13
    .line 14
    return-object p1
.end method

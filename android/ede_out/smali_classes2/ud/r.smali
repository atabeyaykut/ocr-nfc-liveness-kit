.class public final Lud/r;
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
.field public final synthetic a:Lud/b;


# direct methods
.method public constructor <init>(Lud/b;)V
    .locals 0

    iput-object p1, p0, Lud/r;->a:Lud/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object p1, p0, Lud/r;->a:Lud/b;

    .line 4
    .line 5
    invoke-interface {p1}, Lud/b;->cancel()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 9
    .line 10
    return-object p1
.end method

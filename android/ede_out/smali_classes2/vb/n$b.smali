.class public final Lvb/n$b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvb/n;-><init>(Lvb/i;Lcc/p1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/a<",
        "Lcc/p1;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcc/p1;


# direct methods
.method public constructor <init>(Lcc/p1;)V
    .locals 0

    iput-object p1, p0, Lvb/n$b;->a:Lcc/p1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvb/n$b;->a:Lcc/p1;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcc/p1;->g()Lcc/l1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcc/p1;->e(Lcc/l1;)Lcc/p1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

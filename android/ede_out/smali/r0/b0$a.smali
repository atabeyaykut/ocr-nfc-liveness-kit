.class public final Lr0/b0$a;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/b0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lr0/p;",
        "Lr0/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lr0/b0;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lr0/b0;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lr0/b0$a;->a:Lr0/b0;

    iput-object p2, p0, Lr0/b0$a;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lr0/p;

    .line 2
    .line 3
    const-string v0, "$receiver"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lr0/b0$a;->a:Lr0/b0;

    .line 9
    .line 10
    iget-object v0, v0, Lr0/b0;->c:Lx9/p;

    .line 11
    .line 12
    new-instance v1, Lr0/c1;

    .line 13
    .line 14
    iget-object v2, p0, Lr0/b0$a;->b:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-direct {v1, v2}, Lr0/c1;-><init>(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1, v1}, Lx9/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lr0/p;

    .line 24
    .line 25
    return-object p1
.end method

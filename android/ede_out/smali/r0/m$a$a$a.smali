.class public final Lr0/m$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr0/m$a$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/g<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lpc/r;


# direct methods
.method public constructor <init>(Lpc/r;)V
    .locals 0

    iput-object p1, p0, Lr0/m$a$a$a;->a:Lpc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lr0/m$a$a$a;->a:Lpc/r;

    invoke-interface {v0, p1, p2}, Lpc/y;->p(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    return-object p1
.end method

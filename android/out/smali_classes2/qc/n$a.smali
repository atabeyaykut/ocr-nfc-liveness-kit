.class public final synthetic Lqc/n$a;
.super Lkotlin/jvm/internal/g;
.source "SourceFile"

# interfaces
.implements Lx9/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqc/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation


# static fields
.field public static final a:Lqc/n$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqc/n$a;

    invoke-direct {v0}, Lqc/n$a;-><init>()V

    sput-object v0, Lqc/n$a;->a:Lqc/n$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x3

    const-class v2, Lkotlinx/coroutines/flow/g;

    const-string v3, "emit"

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/g;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/g;

    .line 2
    .line 3
    check-cast p3, Lp9/d;

    .line 4
    .line 5
    invoke-interface {p1, p2, p3}, Lkotlinx/coroutines/flow/g;->emit(Ljava/lang/Object;Lp9/d;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

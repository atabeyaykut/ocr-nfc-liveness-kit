.class public final Lg/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/sync/g;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lkotlinx/coroutines/sync/h;->a:I

    .line 5
    .line 6
    new-instance v0, Lkotlinx/coroutines/sync/g;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, v1}, Lkotlinx/coroutines/sync/g;-><init>(II)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lg/b$b;->a:Lkotlinx/coroutines/sync/g;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lj/l;Lp/k;)Lg/b;
    .locals 2

    .line 1
    new-instance v0, Lg/b;

    .line 2
    .line 3
    iget-object p1, p1, Lj/l;->a:Lg/l;

    .line 4
    .line 5
    iget-object v1, p0, Lg/b$b;->a:Lkotlinx/coroutines/sync/g;

    .line 6
    .line 7
    invoke-direct {v0, p1, p2, v1}, Lg/b;-><init>(Lg/l;Lp/k;Lkotlinx/coroutines/sync/g;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    instance-of p1, p1, Lg/b$b;

    return p1
.end method

.method public final hashCode()I
    .locals 1

    const-class v0, Lg/b$b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

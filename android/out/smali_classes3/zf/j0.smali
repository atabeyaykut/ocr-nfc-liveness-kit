.class public final Lzf/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk9/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk9/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    iput-object p1, p0, Lzf/j0;->a:Lzf/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lzf/w4;

    .line 2
    .line 3
    iget-object v1, p0, Lzf/j0;->a:Lzf/d1;

    .line 4
    .line 5
    iget-object v1, v1, Lzf/d1;->d:Lzf/d1;

    .line 6
    .line 7
    invoke-direct {v0, v1}, Lzf/w4;-><init>(Lzf/d1;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

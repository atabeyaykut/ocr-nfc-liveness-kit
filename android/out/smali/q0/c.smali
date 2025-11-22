.class public final Lq0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lq0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq0/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ld0/w;)V
    .locals 1
    .param p1    # Ld0/w;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq0/b;

    invoke-direct {v0}, Lq0/b;-><init>()V

    iput-object v0, p0, Lq0/c;->a:Lq0/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lq0/c;->b:Ljava/lang/Object;

    iput-object p1, p0, Lq0/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq0/c;->a:Lq0/b;

    .line 2
    .line 3
    iput-object p1, v0, Lq0/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, v0, Lq0/b;->b:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object p1, p0, Lq0/c;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-object p1
.end method

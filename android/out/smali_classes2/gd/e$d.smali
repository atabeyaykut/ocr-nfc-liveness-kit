.class public final Lgd/e$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgd/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public final b:Lgd/e$c;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgd/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lgd/e$d;->a:Z

    new-instance v0, Lgd/e$c;

    invoke-direct {v0, p1}, Lgd/e$c;-><init>(Lgd/e;)V

    iput-object v0, p0, Lgd/e$d;->b:Lgd/e$c;

    return-void
.end method

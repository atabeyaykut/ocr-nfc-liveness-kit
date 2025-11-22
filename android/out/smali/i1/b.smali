.class public final Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu0/a$a;


# instance fields
.field public final a:Ly0/c;

.field public final b:Ly0/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ly0/c;Ly0/b;)V
    .locals 0
    .param p2    # Ly0/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li1/b;->a:Ly0/c;

    iput-object p2, p0, Li1/b;->b:Ly0/b;

    return-void
.end method

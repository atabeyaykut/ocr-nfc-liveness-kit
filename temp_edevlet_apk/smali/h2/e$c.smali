.class public final Lh2/e$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Landroid/graphics/RectF;

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(FFLandroid/graphics/RectF;IIZIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lh2/e$c;->d:I

    iput p1, p0, Lh2/e$c;->a:F

    iput p2, p0, Lh2/e$c;->b:F

    iput-object p3, p0, Lh2/e$c;->c:Landroid/graphics/RectF;

    iput p4, p0, Lh2/e$c;->e:I

    iput-boolean p6, p0, Lh2/e$c;->f:Z

    iput p7, p0, Lh2/e$c;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh2/e$c;->h:Z

    iput-boolean p8, p0, Lh2/e$c;->i:Z

    return-void
.end method

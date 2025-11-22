.class public final Lcom/github/barteksc/pdfviewer/PDFView$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final a:Lm2/a;

.field public b:I

.field public final synthetic c:Lcom/github/barteksc/pdfviewer/PDFView;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView;Lm2/a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$a;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$a;->b:I

    iput-object p2, p0, Lcom/github/barteksc/pdfviewer/PDFView$a;->a:Lm2/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$a;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->a(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->d(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->e(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->f(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->g(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->h(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->i(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->g:Lh2/d;

    .line 28
    .line 29
    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v1, Lh2/d;->e:Z

    .line 31
    .line 32
    iget-object v3, v1, Lh2/d;->c:Landroid/view/GestureDetector;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->j(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->setSwipeVertical(Z)V

    .line 41
    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    iput-boolean v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->I:Z

    .line 45
    .line 46
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->k(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 47
    .line 48
    .line 49
    iput-boolean v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->K:Z

    .line 50
    .line 51
    iget v2, p0, Lcom/github/barteksc/pdfviewer/PDFView$a;->b:I

    .line 52
    .line 53
    invoke-static {v0, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->b(Lcom/github/barteksc/pdfviewer/PDFView;I)V

    .line 54
    .line 55
    .line 56
    invoke-static {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->c(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    new-instance v1, Lcom/github/barteksc/pdfviewer/PDFView$a$a;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/github/barteksc/pdfviewer/PDFView$a$a;-><init>(Lcom/github/barteksc/pdfviewer/PDFView$a;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    return-void
.end method

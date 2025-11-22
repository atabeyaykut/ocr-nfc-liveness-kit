.class public final Lcom/github/barteksc/pdfviewer/PDFView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/barteksc/pdfviewer/PDFView$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/github/barteksc/pdfviewer/PDFView$a;


# direct methods
.method public constructor <init>(Lcom/github/barteksc/pdfviewer/PDFView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/github/barteksc/pdfviewer/PDFView$a$a;->a:Lcom/github/barteksc/pdfviewer/PDFView$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/github/barteksc/pdfviewer/PDFView$a$a;->a:Lcom/github/barteksc/pdfviewer/PDFView$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/github/barteksc/pdfviewer/PDFView;->O:I

    .line 7
    .line 8
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView$a;->c:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 9
    .line 10
    iget-boolean v2, v1, Lcom/github/barteksc/pdfviewer/PDFView;->w:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, v1, Lcom/github/barteksc/pdfviewer/PDFView;->h:[I

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    aget v2, v2, v3

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v2, 0x0

    .line 23
    :goto_0
    iput-boolean v3, v1, Lcom/github/barteksc/pdfviewer/PDFView;->w:Z

    .line 24
    .line 25
    new-instance v4, Lh2/c;

    .line 26
    .line 27
    iget-object v5, v1, Lcom/github/barteksc/pdfviewer/PDFView;->G:Lcom/shockwave/pdfium/PdfiumCore;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/github/barteksc/pdfviewer/PDFView$a;->a:Lm2/a;

    .line 30
    .line 31
    invoke-direct {v4, v0, v1, v5, v2}, Lh2/c;-><init>(Lm2/a;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;I)V

    .line 32
    .line 33
    .line 34
    iput-object v4, v1, Lcom/github/barteksc/pdfviewer/PDFView;->y:Lh2/c;

    .line 35
    .line 36
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 37
    .line 38
    new-array v1, v3, [Ljava/lang/Void;

    .line 39
    .line 40
    invoke-virtual {v4, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v1, "Don\'t call load on a PDF View without recycling it first."

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

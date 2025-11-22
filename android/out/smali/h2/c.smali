.class public final Lh2/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Z

.field public final b:Lcom/github/barteksc/pdfviewer/PDFView;

.field public final c:Lcom/shockwave/pdfium/PdfiumCore;

.field public d:Lcom/shockwave/pdfium/PdfDocument;

.field public final e:Ljava/lang/String;

.field public final f:Lm2/a;

.field public final g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Lm2/a;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;I)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lh2/c;->f:Lm2/a;

    iput p4, p0, Lh2/c;->g:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lh2/c;->a:Z

    iput-object p2, p0, Lh2/c;->b:Lcom/github/barteksc/pdfviewer/PDFView;

    const/4 p1, 0x0

    iput-object p1, p0, Lh2/c;->e:Ljava/lang/String;

    iput-object p3, p0, Lh2/c;->c:Lcom/shockwave/pdfium/PdfiumCore;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    .line 3
    iget p1, p0, Lh2/c;->g:I

    .line 4
    .line 5
    iget-object v0, p0, Lh2/c;->c:Lcom/shockwave/pdfium/PdfiumCore;

    .line 6
    .line 7
    :try_start_0
    iget-object v1, p0, Lh2/c;->f:Lm2/a;

    .line 8
    .line 9
    iget-object v2, p0, Lh2/c;->e:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v1, v1, Lm2/a;->a:Ljava/io/File;

    .line 12
    .line 13
    const/high16 v3, 0x10000000

    .line 14
    .line 15
    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/shockwave/pdfium/PdfiumCore;->g(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Lcom/shockwave/pdfium/PdfDocument;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lh2/c;->d:Lcom/shockwave/pdfium/PdfDocument;

    .line 24
    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/shockwave/pdfium/PdfiumCore;->h(Lcom/shockwave/pdfium/PdfDocument;I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lh2/c;->d:Lcom/shockwave/pdfium/PdfDocument;

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/shockwave/pdfium/PdfiumCore;->e(Lcom/shockwave/pdfium/PdfDocument;I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, p0, Lh2/c;->h:I

    .line 35
    .line 36
    iget-object v1, p0, Lh2/c;->d:Lcom/shockwave/pdfium/PdfDocument;

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1}, Lcom/shockwave/pdfium/PdfiumCore;->d(Lcom/shockwave/pdfium/PdfDocument;I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, p0, Lh2/c;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    const/4 p1, 0x0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    :goto_0
    return-object p1
.end method

.method public final onCancelled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lh2/c;->a:Z

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    iget-object v0, p0, Lh2/c;->b:Lcom/github/barteksc/pdfviewer/PDFView;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    iput v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->s()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 14
    .line 15
    .line 16
    const-string v0, "PDFView"

    .line 17
    .line 18
    const-string v1, "load pdf error"

    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    iget-boolean p1, p0, Lh2/c;->a:Z

    .line 25
    .line 26
    if-nez p1, :cond_3

    .line 27
    .line 28
    iget-object p1, p0, Lh2/c;->d:Lcom/shockwave/pdfium/PdfDocument;

    .line 29
    .line 30
    iget v1, p0, Lh2/c;->h:I

    .line 31
    .line 32
    iget v2, p0, Lh2/c;->i:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    iput v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->x:I

    .line 36
    .line 37
    iget-object v3, v0, Lcom/github/barteksc/pdfviewer/PDFView;->G:Lcom/shockwave/pdfium/PdfiumCore;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Lcom/shockwave/pdfium/PdfiumCore;->c(Lcom/shockwave/pdfium/PdfDocument;)I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    iput v4, v0, Lcom/github/barteksc/pdfviewer/PDFView;->l:I

    .line 44
    .line 45
    iput-object p1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->H:Lcom/shockwave/pdfium/PdfDocument;

    .line 46
    .line 47
    iput v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->n:I

    .line 48
    .line 49
    iput v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->p:I

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/github/barteksc/pdfviewer/PDFView;->m()V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lcom/github/barteksc/pdfviewer/a;

    .line 55
    .line 56
    invoke-direct {v1, v0}, Lcom/github/barteksc/pdfviewer/a;-><init>(Lcom/github/barteksc/pdfviewer/PDFView;)V

    .line 57
    .line 58
    .line 59
    iput-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->B:Lcom/github/barteksc/pdfviewer/a;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->z:Landroid/os/HandlerThread;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-nez v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 70
    .line 71
    .line 72
    :cond_1
    new-instance v2, Lh2/e;

    .line 73
    .line 74
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v2, v1, v0, v3, p1}, Lh2/e;-><init>(Landroid/os/Looper;Lcom/github/barteksc/pdfviewer/PDFView;Lcom/shockwave/pdfium/PdfiumCore;Lcom/shockwave/pdfium/PdfDocument;)V

    .line 79
    .line 80
    .line 81
    iput-object v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->A:Lh2/e;

    .line 82
    .line 83
    const/4 p1, 0x1

    .line 84
    iput-boolean p1, v2, Lh2/e;->h:Z

    .line 85
    .line 86
    iget p1, v0, Lcom/github/barteksc/pdfviewer/PDFView;->E:I

    .line 87
    .line 88
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->n(I)F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    neg-float v1, v1

    .line 93
    iget-boolean v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->F:Z

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    iget v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->s:F

    .line 98
    .line 99
    invoke-virtual {v0, v2, v1}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_2
    iget v2, v0, Lcom/github/barteksc/pdfviewer/PDFView;->t:F

    .line 104
    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/github/barteksc/pdfviewer/PDFView;->r(FF)V

    .line 106
    .line 107
    .line 108
    :goto_0
    invoke-virtual {v0, p1}, Lcom/github/barteksc/pdfviewer/PDFView;->t(I)V

    .line 109
    .line 110
    .line 111
    :cond_3
    :goto_1
    return-void
.end method

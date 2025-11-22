.class public final Lzg/d;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lx9/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/j;",
        "Lx9/l<",
        "Lv/e;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;)V
    .locals 0

    iput-object p1, p0, Lzg/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lzg/d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lv/e;

    .line 2
    .line 3
    const-string v0, "dialog"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lv/e;->dismiss()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lzg/d;->a:Ljava/lang/String;

    .line 12
    .line 13
    const-string v0, "HOST"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    const/4 v1, 0x3

    .line 21
    const/4 v2, 0x0

    .line 22
    iget-object v3, p0, Lzg/d;->b:Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 27
    .line 28
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v3, v3, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->a:Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;

    .line 33
    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/data/mkt/AccidentMergedReport;->getReportId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v3, v2

    .line 42
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    new-instance v4, Lzg/o;

    .line 49
    .line 50
    invoke-direct {v4, p1, v3, v2}, Lzg/o;-><init>(Lzg/l;Ljava/lang/String;Lp9/d;)V

    .line 51
    .line 52
    .line 53
    iget-object v3, p1, Lr0/z;->c:Lnc/a0;

    .line 54
    .line 55
    invoke-static {v3, v2, v0, v4, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 56
    .line 57
    .line 58
    new-instance v0, Lzg/p;

    .line 59
    .line 60
    invoke-direct {v0, p1, v2}, Lzg/p;-><init>(Lzg/l;Lp9/d;)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p1, Lzg/l;->k:Lzg/c;

    .line 64
    .line 65
    invoke-static {v3, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    sget-object p1, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->s:[Lda/m;

    .line 70
    .line 71
    invoke-virtual {v3}, Ltr/gov/turkiye/edevlet/kapisi/ui/accident/approve/MobileAccidentApproveFragment;->I()Lzg/l;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v3, p1, Lr0/z;->c:Lnc/a0;

    .line 76
    .line 77
    new-instance v4, Lzg/m;

    .line 78
    .line 79
    invoke-direct {v4, p1, v2}, Lzg/m;-><init>(Lzg/l;Lp9/d;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v3, v2, v0, v4, v1}, Lc5/v;->C(Lnc/a0;Lp9/f;ILx9/p;I)Lnc/t1;

    .line 83
    .line 84
    .line 85
    new-instance v0, Lzg/n;

    .line 86
    .line 87
    invoke-direct {v0, p1, v2}, Lzg/n;-><init>(Lzg/l;Lp9/d;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, p1, Lr0/z;->c:Lnc/a0;

    .line 91
    .line 92
    iget-object p1, p1, Lzg/l;->l:Lzg/b;

    .line 93
    .line 94
    invoke-static {v1, p1, v0}, Lc5/v;->D(Lnc/a0;Lgf/d;Lx9/p;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    sget-object p1, Ll9/m;->a:Ll9/m;

    .line 98
    .line 99
    return-object p1
.end method

.class public final Lzf/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/a;


# instance fields
.field public final a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/n1;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/n1;->a:Lzf/d1;

    .line 4
    .line 5
    invoke-virtual {v0}, Lzf/d1;->c()Lt8/c;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p1, Lu8/a;->a:Lt8/c;

    .line 10
    .line 11
    invoke-static {v0}, Lzf/d1;->b(Lzf/d1;)Lgf/b;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.class public final Lzf/p1;
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

    iput-object p1, p0, Lzf/p1;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lzf/p1;->a:Lzf/d1;

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
    iget-object v0, v0, Lzf/d1;->a:Laf/a;

    .line 15
    .line 16
    check-cast v0, Laf/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Laf/b;->a()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p1, Ltr/gov/turkiye/edevlet/kapisi/verification/CardVerificationResultActivity;->b:Ljava/lang/String;

    .line 23
    .line 24
    return-void
.end method

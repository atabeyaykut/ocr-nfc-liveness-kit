.class public final Lzf/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8/a$a;


# instance fields
.field public final a:Lzf/d1;


# direct methods
.method public constructor <init>(Lzf/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzf/s1;->a:Lzf/d1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lt8/a;
    .locals 1

    .line 1
    check-cast p1, Ltr/gov/turkiye/edevlet/kapisi/profile/contact/ContactInfoFragment;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance p1, Lzf/t1;

    .line 7
    .line 8
    iget-object v0, p0, Lzf/s1;->a:Lzf/d1;

    .line 9
    .line 10
    invoke-direct {p1, v0}, Lzf/t1;-><init>(Lzf/d1;)V

    .line 11
    .line 12
    .line 13
    return-object p1
.end method

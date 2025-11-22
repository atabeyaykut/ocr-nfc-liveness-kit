.class public final Lx0/j$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lv0/a;

.field public final synthetic b:Lx0/j;


# direct methods
.method public constructor <init>(Lx0/j;Lv0/a;)V
    .locals 0

    iput-object p1, p0, Lx0/j$b;->b:Lx0/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lx0/j$b;->a:Lv0/a;

    return-void
.end method

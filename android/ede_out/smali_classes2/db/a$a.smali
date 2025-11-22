.class public final Ldb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lfc/h;

.field public final b:Lva/t;

.field public final c:Lfc/m;


# direct methods
.method public constructor <init>(Lfc/h;Lva/t;Lfc/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb/a$a;->a:Lfc/h;

    iput-object p2, p0, Ldb/a$a;->b:Lva/t;

    iput-object p3, p0, Ldb/a$a;->c:Lfc/m;

    return-void
.end method

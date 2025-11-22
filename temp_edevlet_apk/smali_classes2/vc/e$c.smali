.class public final Lvc/e$c;
.super Led/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvc/e;-><init>(Lrc/v;Lrc/x;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lvc/e;


# direct methods
.method public constructor <init>(Lvc/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lvc/e$c;->k:Lvc/e;

    invoke-direct {p0}, Led/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 1

    iget-object v0, p0, Lvc/e$c;->k:Lvc/e;

    invoke-virtual {v0}, Lvc/e;->cancel()V

    return-void
.end method
